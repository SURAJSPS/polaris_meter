import '../../common_libs.dart';

part 'home_dtos.freezed.dart';
part 'home_dtos.g.dart';

@freezed
class SurveyFormDtos with _$SurveyFormDtos {
  const SurveyFormDtos._();
  @JsonSerializable(explicitToJson: true)
  factory SurveyFormDtos({
    @JsonKey(name: "form_name") required String title,
    @JsonKey(name: "fields") required List<FieldDtos> fields,
  }) = _SurveyFormDtos;

  factory SurveyFormDtos.fromJson(Map<String, dynamic> json) =>
      _$SurveyFormDtosFromJson(json);

  SurveyForm toDomain() {
    return SurveyForm(
      fields: fields.map((e) => e.toDomain()).toList(),
      isDataSync: false,
      title: title,
    );
  }
}

@freezed
class FieldDtos with _$FieldDtos {
  const FieldDtos._();
  @JsonSerializable(explicitToJson: true)
  factory FieldDtos({
    @JsonKey(name: "meta_info") required MetaInfoDtos meta,
    @JsonKey(name: "component_type") required String componentType,
    String? formValue,
  }) = _FieldDtos;

  factory FieldDtos.fromJson(Map<String, dynamic> json) =>
      _$FieldDtosFromJson(json);

  Field toDomain() {
    return Field(
      componentType: componentType,
      isRequired: meta.mandatory == "yes" ? true : false,
      meta: meta.toDomain(),
    );
  }
}

@freezed
class MetaInfoDtos with _$MetaInfoDtos {
  const MetaInfoDtos._();
  @JsonSerializable(explicitToJson: true)
  factory MetaInfoDtos({
    @JsonKey(name: "label") required String label,
    @JsonKey(name: "component_input_type") String? componentInputType,
    @JsonKey(name: "mandatory") required String mandatory,
    @JsonKey(name: "options") List<String>? options,
    @JsonKey(name: "no_of_images_to_capture") int? noOfImagesToCapture,
    @JsonKey(name: "saving_folder") String? savingFolder,
  }) = _MetaInfoDtos;

  factory MetaInfoDtos.fromJson(Map<String, dynamic> json) =>
      _$MetaInfoDtosFromJson(json);

  MetaInfo toDomain() {
    return MetaInfo(
      label: label,
      mandatory: mandatory,
      componentInputType: componentInputType,
      noOfImagesToCapture: noOfImagesToCapture,
      options: options,
      savingFolder: savingFolder,
    );
  }
}
/*

import 'package:json_annotation/json_annotation.dart';
import 'package:polaris_meter/domain/home/home.dart';

part 'home_dtos.g.dart';

@JsonSerializable(explicitToJson: true)
class SurveyFormDtos {
  @JsonKey(name: "form_name")
  String title;
  @JsonKey(
    name: "fields", */
/*toJson: fieldDataTOJson*/ /*

  )
  List<FieldDtos> fields;
  SurveyFormDtos({required this.fields, required this.title});

  factory SurveyFormDtos.fromJson(Map<String, dynamic> json) =>
      _$SurveyFormDtosFromJson(json);

  Map<String, dynamic> toJson() => _$SurveyFormDtosToJson(this);

  static List<Map<String, dynamic>> fieldDataTOJson(List<FieldDtos> fields) =>
      fields.map((field) => field.toJson()).toList();

  SurveyForm toDomain() {
    return SurveyForm(
      fields: fields.map((e) => e.toDomain()).toList(),
      isDataSync: false,
      title: title,
    );
  }
}

@JsonSerializable(explicitToJson: true)
class FieldDtos {
  @JsonKey(
    name: "meta_info", */
/*toJson: mataDataTOJson*/ /*

  )
  MetaInfoDtos meta;
  @JsonKey(name: "component_type")
  String componentType;

  FieldDtos({required this.meta, required this.componentType});

  factory FieldDtos.fromJson(Map<String, dynamic> json) =>
      _$FieldDtosFromJson(json);
  Map<String, dynamic> toJson() => _$FieldDtosToJson(this);

  static Map<String, dynamic> mataDataTOJson(MetaInfoDtos meta) =>
      meta.toJson();

  Field toDomain() {
    return Field(
      componentType: componentType,
      isRequired: meta.mandatory == "yes" ? true : false,
      meta: meta.toDomain(),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class MetaInfoDtos {
  @JsonKey(name: "label")
  String label;
  @JsonKey(name: "component_input_type")
  String? componentInputType;
  @JsonKey(name: "mandatory")
  String mandatory;
  @JsonKey(name: "options")
  List<String>? options;
  @JsonKey(name: "no_of_images_to_capture")
  int? noOfImagesToCapture;
  @JsonKey(name: "saving_folder")
  String? savingFolder;
  MetaInfoDtos(
      {this.options,
      this.componentInputType,
      this.savingFolder,
      this.noOfImagesToCapture,
      required this.mandatory,
      required this.label});

  factory MetaInfoDtos.fromJson(Map<String, dynamic> json) =>
      _$MetaInfoDtosFromJson(json);
  Map<String, dynamic> toJson() => _$MetaInfoDtosToJson(this);
  MetaInfo toDomain() {
    return MetaInfo(
      label: label,
      mandatory: mandatory,
      componentInputType: componentInputType,
      noOfImagesToCapture: noOfImagesToCapture,
      options: options,
      savingFolder: savingFolder,
    );
  }
}
*/
