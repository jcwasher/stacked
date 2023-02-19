// Mocks generated by Mockito 5.3.2 from annotations
// in stacked_cli/test/helpers/test_helpers.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i6;
import 'dart:io' as _i2;

import 'package:ansicolor/ansicolor.dart' as _i4;
import 'package:mockito/mockito.dart' as _i1;
import 'package:pubspec_yaml/pubspec_yaml.dart' as _i3;
import 'package:stacked_cli/src/models/template_models.dart' as _i9;
import 'package:stacked_cli/src/services/analytics_service.dart' as _i16;
import 'package:stacked_cli/src/services/colorized_log_service.dart' as _i13;
import 'package:stacked_cli/src/services/config_service.dart' as _i14;
import 'package:stacked_cli/src/services/file_service.dart' as _i5;
import 'package:stacked_cli/src/services/path_service.dart' as _i7;
import 'package:stacked_cli/src/services/process_service.dart' as _i15;
import 'package:stacked_cli/src/services/pub_service.dart' as _i17;
import 'package:stacked_cli/src/services/pubspec_service.dart' as _i12;
import 'package:stacked_cli/src/services/template_service.dart' as _i8;
import 'package:stacked_cli/src/templates/template_helper.dart' as _i11;
import 'package:stacked_cli/src/templates/template_render_functions.dart'
    as _i10;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeDirectory_0 extends _i1.SmartFake implements _i2.Directory {
  _FakeDirectory_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakePubspecYaml_1 extends _i1.SmartFake implements _i3.PubspecYaml {
  _FakePubspecYaml_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeAnsiPen_2 extends _i1.SmartFake implements _i4.AnsiPen {
  _FakeAnsiPen_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeProcessResult_3 extends _i1.SmartFake implements _i2.ProcessResult {
  _FakeProcessResult_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [FileService].
///
/// See the documentation for Mockito's code generation for more information.
class MockFileService extends _i1.Mock implements _i5.FileService {
  @override
  _i6.Future<void> writeFile({
    required _i2.File? file,
    required String? fileContent,
    bool? verbose = false,
    _i5.FileModificationType? type = _i5.FileModificationType.Create,
    String? verboseMessage,
    bool? forceAppend = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #writeFile,
          [],
          {
            #file: file,
            #fileContent: fileContent,
            #verbose: verbose,
            #type: type,
            #verboseMessage: verboseMessage,
            #forceAppend: forceAppend,
          },
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> deleteFile({
    required String? filePath,
    bool? verbose = true,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteFile,
          [],
          {
            #filePath: filePath,
            #verbose: verbose,
          },
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> deleteFolder({required String? directoryPath}) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteFolder,
          [],
          {#directoryPath: directoryPath},
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<bool> fileExists({required String? filePath}) =>
      (super.noSuchMethod(
        Invocation.method(
          #fileExists,
          [],
          {#filePath: filePath},
        ),
        returnValue: _i6.Future<bool>.value(false),
        returnValueForMissingStub: _i6.Future<bool>.value(false),
      ) as _i6.Future<bool>);
  @override
  _i6.Future<String> readFileAsString({required String? filePath}) =>
      (super.noSuchMethod(
        Invocation.method(
          #readFileAsString,
          [],
          {#filePath: filePath},
        ),
        returnValue: _i6.Future<String>.value(''),
        returnValueForMissingStub: _i6.Future<String>.value(''),
      ) as _i6.Future<String>);
  @override
  _i6.Future<List<String>> readFileAsLines({required String? filePath}) =>
      (super.noSuchMethod(
        Invocation.method(
          #readFileAsLines,
          [],
          {#filePath: filePath},
        ),
        returnValue: _i6.Future<List<String>>.value(<String>[]),
        returnValueForMissingStub: _i6.Future<List<String>>.value(<String>[]),
      ) as _i6.Future<List<String>>);
  @override
  _i6.Future<void> removeSpecificFileLines({
    required String? filePath,
    required String? removedContent,
    String? type = r'view',
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #removeSpecificFileLines,
          [],
          {
            #filePath: filePath,
            #removedContent: removedContent,
            #type: type,
          },
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> removeLinesOnFile({
    required String? filePath,
    required List<int>? linesNumber,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #removeLinesOnFile,
          [],
          {
            #filePath: filePath,
            #linesNumber: linesNumber,
          },
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> removeTestHelperFunctionFromFile({
    required String? filePath,
    required String? serviceName,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #removeTestHelperFunctionFromFile,
          [],
          {
            #filePath: filePath,
            #serviceName: serviceName,
          },
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<List<_i2.FileSystemEntity>> getFilesInDirectory(
          {required String? directoryPath}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getFilesInDirectory,
          [],
          {#directoryPath: directoryPath},
        ),
        returnValue: _i6.Future<List<_i2.FileSystemEntity>>.value(
            <_i2.FileSystemEntity>[]),
        returnValueForMissingStub: _i6.Future<List<_i2.FileSystemEntity>>.value(
            <_i2.FileSystemEntity>[]),
      ) as _i6.Future<List<_i2.FileSystemEntity>>);
  @override
  _i6.Future<List<String>> getFoldersInDirectory(
          {required String? directoryPath}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getFoldersInDirectory,
          [],
          {#directoryPath: directoryPath},
        ),
        returnValue: _i6.Future<List<String>>.value(<String>[]),
        returnValueForMissingStub: _i6.Future<List<String>>.value(<String>[]),
      ) as _i6.Future<List<String>>);
}

/// A class which mocks [PathService].
///
/// See the documentation for Mockito's code generation for more information.
class MockPathService extends _i1.Mock implements _i7.PathService {
  @override
  String get templatesPath => (super.noSuchMethod(
        Invocation.getter(#templatesPath),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String get separator => (super.noSuchMethod(
        Invocation.getter(#separator),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  _i2.Directory get configHome => (super.noSuchMethod(
        Invocation.getter(#configHome),
        returnValue: _FakeDirectory_0(
          this,
          Invocation.getter(#configHome),
        ),
        returnValueForMissingStub: _FakeDirectory_0(
          this,
          Invocation.getter(#configHome),
        ),
      ) as _i2.Directory);
  @override
  String join(
    String? part1, [
    String? part2,
    String? part3,
    String? part4,
    String? part5,
    String? part6,
    String? part7,
    String? part8,
  ]) =>
      (super.noSuchMethod(
        Invocation.method(
          #join,
          [
            part1,
            part2,
            part3,
            part4,
            part5,
            part6,
            part7,
            part8,
          ],
        ),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String basename(String? path) => (super.noSuchMethod(
        Invocation.method(
          #basename,
          [path],
        ),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
}

/// A class which mocks [TemplateService].
///
/// See the documentation for Mockito's code generation for more information.
class MockTemplateService extends _i1.Mock implements _i8.TemplateService {
  @override
  _i6.Future<void> compileTemplateInformation() => (super.noSuchMethod(
        Invocation.method(
          #compileTemplateInformation,
          [],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> renderTemplate({
    required String? templateName,
    required String? name,
    bool? verbose = false,
    bool? excludeRoute = false,
    bool? useBuilder = false,
    bool? hasModel = true,
    String? outputPath,
    String? templateType,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #renderTemplate,
          [],
          {
            #templateName: templateName,
            #name: name,
            #verbose: verbose,
            #excludeRoute: excludeRoute,
            #useBuilder: useBuilder,
            #hasModel: hasModel,
            #outputPath: outputPath,
            #templateType: templateType,
          },
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> writeOutTemplateFiles({
    required _i9.StackedTemplate? template,
    required String? templateName,
    required String? name,
    String? outputFolder,
    bool? useBuilder = false,
    bool? hasModel = true,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #writeOutTemplateFiles,
          [],
          {
            #template: template,
            #templateName: templateName,
            #name: name,
            #outputFolder: outputFolder,
            #useBuilder: useBuilder,
            #hasModel: hasModel,
          },
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  String getTemplateOutputPath({
    required String? inputTemplatePath,
    required String? name,
    String? outputFolder,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getTemplateOutputPath,
          [],
          {
            #inputTemplatePath: inputTemplatePath,
            #name: name,
            #outputFolder: outputFolder,
          },
        ),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String renderContentForTemplate({
    required String? content,
    required String? templateName,
    required String? name,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #renderContentForTemplate,
          [],
          {
            #content: content,
            #templateName: templateName,
            #name: name,
          },
        ),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  Map<String, String> getTemplateRenderData({
    required String? templateName,
    required String? name,
    Map<String, _i10.RenderFunction>? testRenderFunctions,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getTemplateRenderData,
          [],
          {
            #templateName: templateName,
            #name: name,
            #testRenderFunctions: testRenderFunctions,
          },
        ),
        returnValue: <String, String>{},
        returnValueForMissingStub: <String, String>{},
      ) as Map<String, String>);
  @override
  Map<String, String> applyGlobalTemplateProperties(
    Map<String, String>? renderTemplate, {
    String? packageName,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #applyGlobalTemplateProperties,
          [renderTemplate],
          {#packageName: packageName},
        ),
        returnValue: <String, String>{},
        returnValueForMissingStub: <String, String>{},
      ) as Map<String, String>);
  @override
  _i6.Future<void> modifyExistingFiles({
    required _i9.StackedTemplate? template,
    required String? templateName,
    required String? name,
    String? outputPath,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #modifyExistingFiles,
          [],
          {
            #template: template,
            #templateName: templateName,
            #name: name,
            #outputPath: outputPath,
          },
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  String templateModificationName({
    required String? modificationName,
    required String? name,
    required String? templateName,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #templateModificationName,
          [],
          {
            #modificationName: modificationName,
            #name: name,
            #templateName: templateName,
          },
        ),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String templateModificationFileContent({
    required String? fileContent,
    required String? modificationTemplate,
    required String? modificationIdentifier,
    required String? name,
    required String? templateName,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #templateModificationFileContent,
          [],
          {
            #fileContent: fileContent,
            #modificationTemplate: modificationTemplate,
            #modificationIdentifier: modificationIdentifier,
            #name: name,
            #templateName: templateName,
          },
        ),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  bool shouldAppendTemplate(String? relativeOutputPath) => (super.noSuchMethod(
        Invocation.method(
          #shouldAppendTemplate,
          [relativeOutputPath],
        ),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);
}

/// A class which mocks [TemplateHelper].
///
/// See the documentation for Mockito's code generation for more information.
class MockTemplateHelper extends _i1.Mock implements _i11.TemplateHelper {
  @override
  String get templatesPath => (super.noSuchMethod(
        Invocation.getter(#templatesPath),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  List<_i2.FileSystemEntity> getFilesWithExtension({
    required List<_i2.FileSystemEntity>? filePaths,
    required String? extension,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getFilesWithExtension,
          [],
          {
            #filePaths: filePaths,
            #extension: extension,
          },
        ),
        returnValue: <_i2.FileSystemEntity>[],
        returnValueForMissingStub: <_i2.FileSystemEntity>[],
      ) as List<_i2.FileSystemEntity>);
  @override
  List<_i2.FileSystemEntity> getFilesThatContainSection({
    required List<_i2.FileSystemEntity>? files,
    required String? section,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getFilesThatContainSection,
          [],
          {
            #files: files,
            #section: section,
          },
        ),
        returnValue: <_i2.FileSystemEntity>[],
        returnValueForMissingStub: <_i2.FileSystemEntity>[],
      ) as List<_i2.FileSystemEntity>);
  @override
  String getTemplateFileNameOnly(
          {required _i2.FileSystemEntity? templateFilePath}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getTemplateFileNameOnly,
          [],
          {#templateFilePath: templateFilePath},
        ),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String getTemplateFolderName({required String? templateFilePath}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getTemplateFolderName,
          [],
          {#templateFilePath: templateFilePath},
        ),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  _i6.Future<List<_i2.FileSystemEntity>> getFilesForTemplate({
    required String? templateName,
    String? extension = r'stk',
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getFilesForTemplate,
          [],
          {
            #templateName: templateName,
            #extension: extension,
          },
        ),
        returnValue: _i6.Future<List<_i2.FileSystemEntity>>.value(
            <_i2.FileSystemEntity>[]),
        returnValueForMissingStub: _i6.Future<List<_i2.FileSystemEntity>>.value(
            <_i2.FileSystemEntity>[]),
      ) as _i6.Future<List<_i2.FileSystemEntity>>);
  @override
  _i6.Future<List<_i9.CompiledFileModification>>
      getTemplateModificationsToApply({required String? templateName}) =>
          (super.noSuchMethod(
            Invocation.method(
              #getTemplateModificationsToApply,
              [],
              {#templateName: templateName},
            ),
            returnValue: _i6.Future<List<_i9.CompiledFileModification>>.value(
                <_i9.CompiledFileModification>[]),
            returnValueForMissingStub:
                _i6.Future<List<_i9.CompiledFileModification>>.value(
                    <_i9.CompiledFileModification>[]),
          ) as _i6.Future<List<_i9.CompiledFileModification>>);
  @override
  _i6.Future<List<_i9.CompliledTemplateFile>> getTemplateItemsToRender(
          {required String? templateName}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getTemplateItemsToRender,
          [],
          {#templateName: templateName},
        ),
        returnValue: _i6.Future<List<_i9.CompliledTemplateFile>>.value(
            <_i9.CompliledTemplateFile>[]),
        returnValueForMissingStub:
            _i6.Future<List<_i9.CompliledTemplateFile>>.value(
                <_i9.CompliledTemplateFile>[]),
      ) as _i6.Future<List<_i9.CompliledTemplateFile>>);
}

/// A class which mocks [PubspecService].
///
/// See the documentation for Mockito's code generation for more information.
class MockPubspecService extends _i1.Mock implements _i12.PubspecService {
  @override
  _i3.PubspecYaml get pubspecYaml => (super.noSuchMethod(
        Invocation.getter(#pubspecYaml),
        returnValue: _FakePubspecYaml_1(
          this,
          Invocation.getter(#pubspecYaml),
        ),
        returnValueForMissingStub: _FakePubspecYaml_1(
          this,
          Invocation.getter(#pubspecYaml),
        ),
      ) as _i3.PubspecYaml);
  @override
  set pubspecYaml(_i3.PubspecYaml? _pubspecYaml) => super.noSuchMethod(
        Invocation.setter(
          #pubspecYaml,
          _pubspecYaml,
        ),
        returnValueForMissingStub: null,
      );
  @override
  String get getPackageName => (super.noSuchMethod(
        Invocation.getter(#getPackageName),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  _i6.Future<void> initialise({String? workingDirectory}) =>
      (super.noSuchMethod(
        Invocation.method(
          #initialise,
          [],
          {#workingDirectory: workingDirectory},
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
}

/// A class which mocks [ColorizedLogService].
///
/// See the documentation for Mockito's code generation for more information.
class MockColorizedLogService extends _i1.Mock
    implements _i13.ColorizedLogService {
  @override
  _i4.AnsiPen get pen => (super.noSuchMethod(
        Invocation.getter(#pen),
        returnValue: _FakeAnsiPen_2(
          this,
          Invocation.getter(#pen),
        ),
        returnValueForMissingStub: _FakeAnsiPen_2(
          this,
          Invocation.getter(#pen),
        ),
      ) as _i4.AnsiPen);
  @override
  set pen(_i4.AnsiPen? _pen) => super.noSuchMethod(
        Invocation.setter(
          #pen,
          _pen,
        ),
        returnValueForMissingStub: null,
      );
  @override
  void coloredPrint(
    _i4.AnsiPen? pen, {
    required String? message,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #coloredPrint,
          [pen],
          {#message: message},
        ),
        returnValueForMissingStub: null,
      );
  @override
  void fileOutput({
    required _i5.FileModificationType? type,
    required String? message,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #fileOutput,
          [],
          {
            #type: type,
            #message: message,
          },
        ),
        returnValueForMissingStub: null,
      );
  @override
  void flutterOutput({required String? message}) => super.noSuchMethod(
        Invocation.method(
          #flutterOutput,
          [],
          {#message: message},
        ),
        returnValueForMissingStub: null,
      );
  @override
  void stackedOutput({
    required String? message,
    bool? isBold = false,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #stackedOutput,
          [],
          {
            #message: message,
            #isBold: isBold,
          },
        ),
        returnValueForMissingStub: null,
      );
  @override
  void success({required String? message}) => super.noSuchMethod(
        Invocation.method(
          #success,
          [],
          {#message: message},
        ),
        returnValueForMissingStub: null,
      );
  @override
  void warn({required String? message}) => super.noSuchMethod(
        Invocation.method(
          #warn,
          [],
          {#message: message},
        ),
        returnValueForMissingStub: null,
      );
  @override
  void info({required String? message}) => super.noSuchMethod(
        Invocation.method(
          #info,
          [],
          {#message: message},
        ),
        returnValueForMissingStub: null,
      );
  @override
  void error({required String? message}) => super.noSuchMethod(
        Invocation.method(
          #error,
          [],
          {#message: message},
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [ConfigService].
///
/// See the documentation for Mockito's code generation for more information.
class MockConfigService extends _i1.Mock implements _i14.ConfigService {
  @override
  bool get hasCustomConfig => (super.noSuchMethod(
        Invocation.getter(#hasCustomConfig),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);
  @override
  String get serviceImportPath => (super.noSuchMethod(
        Invocation.getter(#serviceImportPath),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String get servicePath => (super.noSuchMethod(
        Invocation.getter(#servicePath),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String get locatorName => (super.noSuchMethod(
        Invocation.getter(#locatorName),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String get registerMocksFunction => (super.noSuchMethod(
        Invocation.getter(#registerMocksFunction),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String get serviceTestHelpersImport => (super.noSuchMethod(
        Invocation.getter(#serviceTestHelpersImport),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String get bottomSheetsPath => (super.noSuchMethod(
        Invocation.getter(#bottomSheetsPath),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String get bottomSheetBuilderFilePath => (super.noSuchMethod(
        Invocation.getter(#bottomSheetBuilderFilePath),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String get bottomSheetTypeFilePath => (super.noSuchMethod(
        Invocation.getter(#bottomSheetTypeFilePath),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String get dialogsPath => (super.noSuchMethod(
        Invocation.getter(#dialogsPath),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String get dialogBuilderFilePath => (super.noSuchMethod(
        Invocation.getter(#dialogBuilderFilePath),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String get dialogTypeFilePath => (super.noSuchMethod(
        Invocation.getter(#dialogTypeFilePath),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String get stackedAppFilePath => (super.noSuchMethod(
        Invocation.getter(#stackedAppFilePath),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String get testHelpersFilePath => (super.noSuchMethod(
        Invocation.getter(#testHelpersFilePath),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String get testServicesPath => (super.noSuchMethod(
        Invocation.getter(#testServicesPath),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String get testViewsPath => (super.noSuchMethod(
        Invocation.getter(#testViewsPath),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String get viewImportPath => (super.noSuchMethod(
        Invocation.getter(#viewImportPath),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String get viewPath => (super.noSuchMethod(
        Invocation.getter(#viewPath),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String get viewTestHelpersImport => (super.noSuchMethod(
        Invocation.getter(#viewTestHelpersImport),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  bool get v1 => (super.noSuchMethod(
        Invocation.getter(#v1),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);
  @override
  int get lineLength => (super.noSuchMethod(
        Invocation.getter(#lineLength),
        returnValue: 0,
        returnValueForMissingStub: 0,
      ) as int);
  @override
  _i6.Future<String?> resolveConfigFile({String? path}) => (super.noSuchMethod(
        Invocation.method(
          #resolveConfigFile,
          [],
          {#path: path},
        ),
        returnValue: _i6.Future<String?>.value(),
        returnValueForMissingStub: _i6.Future<String?>.value(),
      ) as _i6.Future<String?>);
  @override
  _i6.Future<void> loadConfig({String? path}) => (super.noSuchMethod(
        Invocation.method(
          #loadConfig,
          [],
          {#path: path},
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  String replaceCustomPaths(String? path) => (super.noSuchMethod(
        Invocation.method(
          #replaceCustomPaths,
          [path],
        ),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String sanitizePath(
    String? path, [
    String? find = r'lib/',
  ]) =>
      (super.noSuchMethod(
        Invocation.method(
          #sanitizePath,
          [
            path,
            find,
          ],
        ),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  String getFilePathToHelpersAndMocks(String? path) => (super.noSuchMethod(
        Invocation.method(
          #getFilePathToHelpersAndMocks,
          [path],
        ),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
}

/// A class which mocks [ProcessService].
///
/// See the documentation for Mockito's code generation for more information.
class MockProcessService extends _i1.Mock implements _i15.ProcessService {
  @override
  set formattingLineLength(String? length) => super.noSuchMethod(
        Invocation.setter(
          #formattingLineLength,
          length,
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i6.Future<void> runCreateApp({required String? appName}) =>
      (super.noSuchMethod(
        Invocation.method(
          #runCreateApp,
          [],
          {#appName: appName},
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> runBuildRunner({String? appName}) => (super.noSuchMethod(
        Invocation.method(
          #runBuildRunner,
          [],
          {#appName: appName},
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> runPubGet({String? appName}) => (super.noSuchMethod(
        Invocation.method(
          #runPubGet,
          [],
          {#appName: appName},
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> runFormat({
    String? appName,
    String? filePath,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #runFormat,
          [],
          {
            #appName: appName,
            #filePath: filePath,
          },
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> runPubGlobalActivate() => (super.noSuchMethod(
        Invocation.method(
          #runPubGlobalActivate,
          [],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<List<String>> runPubGlobalList() => (super.noSuchMethod(
        Invocation.method(
          #runPubGlobalList,
          [],
        ),
        returnValue: _i6.Future<List<String>>.value(<String>[]),
        returnValueForMissingStub: _i6.Future<List<String>>.value(<String>[]),
      ) as _i6.Future<List<String>>);
  @override
  _i6.Future<List<String>> runAnalyze({String? appName}) => (super.noSuchMethod(
        Invocation.method(
          #runAnalyze,
          [],
          {#appName: appName},
        ),
        returnValue: _i6.Future<List<String>>.value(<String>[]),
        returnValueForMissingStub: _i6.Future<List<String>>.value(<String>[]),
      ) as _i6.Future<List<String>>);
  @override
  void logSuccessStatus(int? exitCode) => super.noSuchMethod(
        Invocation.method(
          #logSuccessStatus,
          [exitCode],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [AnalyticsService].
///
/// See the documentation for Mockito's code generation for more information.
class MockAnalyticsService extends _i1.Mock implements _i16.AnalyticsService {
  @override
  bool get isFirstRun => (super.noSuchMethod(
        Invocation.getter(#isFirstRun),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);
  @override
  bool get enabled => (super.noSuchMethod(
        Invocation.getter(#enabled),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);
  @override
  void enable(bool? value) => super.noSuchMethod(
        Invocation.method(
          #enable,
          [value],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i6.Future<void> createAppEvent({required String? name}) =>
      (super.noSuchMethod(
        Invocation.method(
          #createAppEvent,
          [],
          {#name: name},
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> createBottomSheetEvent({required String? name}) =>
      (super.noSuchMethod(
        Invocation.method(
          #createBottomSheetEvent,
          [],
          {#name: name},
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> createDialogEvent({required String? name}) =>
      (super.noSuchMethod(
        Invocation.method(
          #createDialogEvent,
          [],
          {#name: name},
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> createServiceEvent({required String? name}) =>
      (super.noSuchMethod(
        Invocation.method(
          #createServiceEvent,
          [],
          {#name: name},
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> createViewEvent({required String? name}) =>
      (super.noSuchMethod(
        Invocation.method(
          #createViewEvent,
          [],
          {#name: name},
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> deleteServiceEvent({required String? name}) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteServiceEvent,
          [],
          {#name: name},
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> deleteViewEvent({required String? name}) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteViewEvent,
          [],
          {#name: name},
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> generateCodeEvent() => (super.noSuchMethod(
        Invocation.method(
          #generateCodeEvent,
          [],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> updateCliEvent() => (super.noSuchMethod(
        Invocation.method(
          #updateCliEvent,
          [],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<void> logExceptionEvent({
    _i16.Level? level = _i16.Level.error,
    required String? runtimeType,
    required String? message,
    String? stackTrace = r'Not Available',
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #logExceptionEvent,
          [],
          {
            #level: level,
            #runtimeType: runtimeType,
            #message: message,
            #stackTrace: stackTrace,
          },
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
}

/// A class which mocks [PubService].
///
/// See the documentation for Mockito's code generation for more information.
class MockPubService extends _i1.Mock implements _i17.PubService {
  @override
  _i6.Future<String> getCurrentVersion() => (super.noSuchMethod(
        Invocation.method(
          #getCurrentVersion,
          [],
        ),
        returnValue: _i6.Future<String>.value(''),
        returnValueForMissingStub: _i6.Future<String>.value(''),
      ) as _i6.Future<String>);
  @override
  _i6.Future<String> getLatestVersion() => (super.noSuchMethod(
        Invocation.method(
          #getLatestVersion,
          [],
        ),
        returnValue: _i6.Future<String>.value(''),
        returnValueForMissingStub: _i6.Future<String>.value(''),
      ) as _i6.Future<String>);
  @override
  _i6.Future<bool> hasLatestVersion() => (super.noSuchMethod(
        Invocation.method(
          #hasLatestVersion,
          [],
        ),
        returnValue: _i6.Future<bool>.value(false),
        returnValueForMissingStub: _i6.Future<bool>.value(false),
      ) as _i6.Future<bool>);
  @override
  _i6.Future<_i2.ProcessResult> update() => (super.noSuchMethod(
        Invocation.method(
          #update,
          [],
        ),
        returnValue: _i6.Future<_i2.ProcessResult>.value(_FakeProcessResult_3(
          this,
          Invocation.method(
            #update,
            [],
          ),
        )),
        returnValueForMissingStub:
            _i6.Future<_i2.ProcessResult>.value(_FakeProcessResult_3(
          this,
          Invocation.method(
            #update,
            [],
          ),
        )),
      ) as _i6.Future<_i2.ProcessResult>);
}
