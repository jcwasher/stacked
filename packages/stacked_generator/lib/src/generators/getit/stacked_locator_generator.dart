import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'package:stacked_core/stacked_core.dart';
import 'package:stacked_generator/import_resolver.dart';
import 'package:stacked_generator/src/generators/getit/dependency_config/factory_dependency.dart';
import 'package:stacked_generator/src/generators/getit/dependency_config/presolve_singleton_dependency.dart';
import 'package:stacked_generator/src/generators/getit/dependency_config/singleton_dependency.dart';
import 'package:stacked_generator/src/generators/getit/stacked_locator_content_generator.dart';
import 'package:stacked_generator/src/generators/getit/stacked_locator_parameter_resolver.dart';
import 'package:stacked_generator/utils.dart';

import 'dependency_config/dependency_config.dart';
import 'dependency_config/factory_param_dependency.dart';
import 'dependency_config/lazy_singleton.dart';

class StackedLocatorGenerator extends GeneratorForAnnotation<StackedApp> {
  @override
  dynamic generateForAnnotatedElement(
    Element element,
    ConstantReader stackedApplication,
    BuildStep buildStep,
  ) async {
    var libs = await buildStep.resolver.libraries.toList();
    var importResolver = ImportResolver(libs, element.source?.uri.path ?? '');

    final String locatorName =
        stackedApplication.peek('locatorName')!.stringValue;

    final String locatorSetupName =
        stackedApplication.peek('locatorSetupName')!.stringValue;

    throwIf(
      locatorName.isEmpty || locatorSetupName.isEmpty,
      "Error: locatorName or locatorSetupName can not be a null or empty string",
    );

    final servicesConfig = stackedApplication.peek('dependencies')?.listValue;
    if (servicesConfig != null) {
      List<DependencyConfig> dependencies = <DependencyConfig>[];
      // Convert the services config into Services configuration
      for (final serviceConfig in servicesConfig) {
        final serialisedServiceConfig = _readDependencyConfig(
          dependencyConfig: serviceConfig,
          importResolver: importResolver,
        );
        dependencies.add(serialisedServiceConfig);
      }

      return StackedLocatorContentGenerator(
        dependencies: dependencies,
        locatorName: toLowerCamelCase(locatorName),
        locatorSetupName: toLowerCamelCase(locatorSetupName),
      ).generate();
    }
  }

  DependencyConfig _readDependencyConfig({
    required DartObject dependencyConfig,
    required ImportResolver importResolver,
  }) {
    var dependencyReader = ConstantReader(dependencyConfig);
    // Get the type of the service that we want to register
    final DartType? dependencyClassType =
        dependencyReader.read('classType').typeValue;

    final DartType? dependencyAbstractedClassType =
        dependencyReader.peek('asType')?.typeValue;

    throwIf(
      dependencyClassType == null,
      '🛑 No dependency class Type defined for ${dependencyConfig.toString()}. Please make sure that any of the services provided to the services list in the StackedApp annotation has a service provided. Please see the documentation for stacked_generator if you don\'t know what this means.',
    );

    final classElement = dependencyClassType!.element as ClassElement?;

    throwIf(
      classElement == null,
      '🛑 ${toDisplayString(dependencyClassType)} is not a class element. All services should be classes. We don\'t register individual values for global access through the locator. Make sure the value provided as your service type is a class.',
    );

    final Set<String>? environments = dependencyReader
        .peek('environments')
        ?.setValue
        .map((e) => e.toStringValue())
        .where((element) => element != null)
        .toSet()
        .cast<String>();

    // Get the import of the class type that's defined for the service
    final import = importResolver.resolve(classElement!);

    final abstractedClassElement =
        dependencyAbstractedClassType?.element as ClassElement?;

    final abstractedImport = importResolver.resolve(abstractedClassElement);

    final className = toDisplayString(dependencyClassType);

    final abstractedTypeClassName = dependencyAbstractedClassType != null
        ? toDisplayString(dependencyAbstractedClassType)
        : null;

    // NOTE: This can be used for actual dependency inject. We do service location instead.
    final constructor = classElement.unnamedConstructor;

    if (dependencyReader.instanceOf(TypeChecker.fromRuntime(Factory))) {
      return FactoryDependency(
        import: import!,
        className: className,
        abstractedTypeClassName: abstractedTypeClassName,
        abstractedImport: abstractedImport,
        environments: environments,
      );
    }

    if (dependencyReader.instanceOf(TypeChecker.fromRuntime(Singleton))) {
      final ConstantReader? resolveUsing =
          dependencyReader.peek('resolveUsing');
      final resolveObject = resolveUsing?.objectValue.toFunctionValue();

      return SingletonDependency(
          import: import!,
          className: className,
          abstractedTypeClassName: abstractedTypeClassName,
          abstractedImport: abstractedImport,
          environments: environments,
          resolveFunction: resolveObject?.displayName);
    }
    if (dependencyReader.instanceOf(TypeChecker.fromRuntime(LazySingleton))) {
      final ConstantReader? resolveUsing =
          dependencyReader.peek('resolveUsing');
      final resolveObject = resolveUsing?.objectValue.toFunctionValue();

      return LazySingletonDependency(
          import: import!,
          className: className,
          abstractedTypeClassName: abstractedTypeClassName,
          abstractedImport: abstractedImport,
          environments: environments,
          resolveFunction: resolveObject?.displayName);
    }
    if (dependencyReader.instanceOf(TypeChecker.fromRuntime(Presolve))) {
      final ConstantReader? presolveUsing =
          dependencyReader.peek('presolveUsing');
      final presolveObject = presolveUsing?.objectValue.toFunctionValue();
      return PresolveSingletonDependency(
          import: import!,
          className: className,
          abstractedTypeClassName: abstractedTypeClassName,
          abstractedImport: abstractedImport,
          environments: environments,
          presolveFunction: presolveObject?.displayName);
    }
    // if (dependencyReader
    //     .instanceOf(TypeChecker.fromRuntime(FactoryWithParam))) {
    final Set<FactoryParameter> clazzParams = {};
    var params = constructor?.parameters;
    if (params?.isNotEmpty == true && constructor != null) {
      final paramResolver = DependencyParameterResolver(importResolver);
      for (ParameterElement p in constructor.parameters) {
        clazzParams.add(paramResolver.resolve(p));
      }
    }
    return FactoryParamDependency(
        import: import!,
        className: className,
        abstractedTypeClassName: abstractedTypeClassName,
        abstractedImport: abstractedImport,
        environments: environments,
        params: clazzParams);
    // }
  }
}
