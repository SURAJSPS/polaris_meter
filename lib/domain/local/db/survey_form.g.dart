// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_form.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SurveyFormDBModelAdapter extends TypeAdapter<SurveyFormDBModel> {
  @override
  final int typeId = 0;

  @override
  SurveyFormDBModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SurveyFormDBModel(
      isDataSync: fields[1] as bool,
      fields: (fields[2] as List).cast<FieldFormDBModel>(),
      title: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, SurveyFormDBModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.isDataSync)
      ..writeByte(2)
      ..write(obj.fields);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SurveyFormDBModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class FieldFormDBModelAdapter extends TypeAdapter<FieldFormDBModel> {
  @override
  final int typeId = 1;

  @override
  FieldFormDBModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FieldFormDBModel(
      isRequired: fields[4] as bool,
      formValue: fields[3] as String?,
      meta: fields[1] as MetaInfoDBModel,
      componentType: fields[2] as String,
      componentId: fields[0] as int,
    );
  }

  @override
  void write(BinaryWriter writer, FieldFormDBModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.componentId)
      ..writeByte(1)
      ..write(obj.meta)
      ..writeByte(2)
      ..write(obj.componentType)
      ..writeByte(3)
      ..write(obj.formValue)
      ..writeByte(4)
      ..write(obj.isRequired);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FieldFormDBModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MetaInfoDBModelAdapter extends TypeAdapter<MetaInfoDBModel> {
  @override
  final int typeId = 3;

  @override
  MetaInfoDBModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MetaInfoDBModel(
      label: fields[0] as String,
      mandatory: fields[2] as String,
      componentInputType: fields[1] as String,
      options: (fields[3] as List?)?.cast<String>(),
      noOfImagesToCapture: fields[4] as int?,
      savingFolder: fields[5] as String?,
      imageUri: fields[6] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, MetaInfoDBModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.label)
      ..writeByte(1)
      ..write(obj.componentInputType)
      ..writeByte(2)
      ..write(obj.mandatory)
      ..writeByte(3)
      ..write(obj.options)
      ..writeByte(4)
      ..write(obj.noOfImagesToCapture)
      ..writeByte(5)
      ..write(obj.savingFolder)
      ..writeByte(6)
      ..write(obj.imageUri);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MetaInfoDBModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
