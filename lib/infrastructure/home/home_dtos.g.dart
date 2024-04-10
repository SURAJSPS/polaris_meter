// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SurveyFormDtosImpl _$$SurveyFormDtosImplFromJson(Map<String, dynamic> json) =>
    _$SurveyFormDtosImpl(
      title: json['form_name'] as String,
      fields: (json['fields'] as List<dynamic>)
          .map((e) => FieldDtos.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SurveyFormDtosImplToJson(
        _$SurveyFormDtosImpl instance) =>
    <String, dynamic>{
      'form_name': instance.title,
      'fields': instance.fields.map((e) => e.toJson()).toList(),
    };

_$FieldDtosImpl _$$FieldDtosImplFromJson(Map<String, dynamic> json) =>
    _$FieldDtosImpl(
      meta: MetaInfoDtos.fromJson(json['meta_info'] as Map<String, dynamic>),
      componentType: json['component_type'] as String,
      formValue: json['formValue'] as String?,
    );

Map<String, dynamic> _$$FieldDtosImplToJson(_$FieldDtosImpl instance) =>
    <String, dynamic>{
      'meta_info': instance.meta.toJson(),
      'component_type': instance.componentType,
      'formValue': instance.formValue,
    };

_$MetaInfoDtosImpl _$$MetaInfoDtosImplFromJson(Map<String, dynamic> json) =>
    _$MetaInfoDtosImpl(
      label: json['label'] as String,
      componentInputType: json['component_input_type'] as String?,
      mandatory: json['mandatory'] as String,
      options:
          (json['options'] as List<dynamic>?)?.map((e) => e as String).toList(),
      noOfImagesToCapture: json['no_of_images_to_capture'] as int?,
      savingFolder: json['saving_folder'] as String?,
    );

Map<String, dynamic> _$$MetaInfoDtosImplToJson(_$MetaInfoDtosImpl instance) =>
    <String, dynamic>{
      'label': instance.label,
      'component_input_type': instance.componentInputType,
      'mandatory': instance.mandatory,
      'options': instance.options,
      'no_of_images_to_capture': instance.noOfImagesToCapture,
      'saving_folder': instance.savingFolder,
    };
