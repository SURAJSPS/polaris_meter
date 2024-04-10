import 'package:polaris_meter/common_libs.dart';

part 'home.freezed.dart';

@freezed
class SurveyForm with _$SurveyForm {
  SurveyForm._();
  factory SurveyForm({
    required String title,
    required bool isDataSync,
    required List<Field> fields,
  }) = _SurveyForm;

  SurveyFormDtos toDtos() => SurveyFormDtos(
      fields: fields.map((field) => field.toDtos()).toList(), title: title);
}

@freezed
class Field with _$Field {
  Field._();
  factory Field({
    int? componentId,
    required MetaInfo meta,
    required String componentType,
    String? formValue,
    required bool isRequired,
  }) = _Field;

  FieldDtos toDtos() => FieldDtos(
      meta: meta.toDtos(), componentType: componentType, formValue: formValue);

  // Map<String, dynamic> toJson() =>
  //     {'meta_info': meta.toDtos().toJson(), 'component_type': componentType};
}

@freezed
class MetaInfo with _$MetaInfo {
  MetaInfo._();
  factory MetaInfo({
    required String label,
    String? componentInputType,
    required String mandatory,
    List<String>? options,
    int? noOfImagesToCapture,
    String? savingFolder,
  }) = _MetaInfo;

  MetaInfoDtos toDtos() => MetaInfoDtos(
        mandatory: mandatory,
        label: label,
        componentInputType: componentInputType,
        savingFolder: savingFolder,
        options: options,
        noOfImagesToCapture: noOfImagesToCapture,
      );
}
