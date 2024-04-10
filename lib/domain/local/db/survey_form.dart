import 'package:hive/hive.dart';

part 'survey_form.g.dart';

@HiveType(typeId: 0)
class SurveyFormDBModel extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  bool isDataSync;
  @HiveField(2)
  List<FieldFormDBModel> fields;

  SurveyFormDBModel({
    required this.isDataSync,
    required this.fields,
    required this.title,
  });
}

@HiveType(typeId: 1)
class FieldFormDBModel extends HiveObject {
  @HiveField(0)
  int componentId;
  @HiveField(1)
  MetaInfoDBModel meta;
  @HiveField(2)
  String componentType;
  @HiveField(3)
  String? formValue;
  @HiveField(4)
  bool isRequired;

  FieldFormDBModel({
    required this.isRequired,
    required this.formValue,
    required this.meta,
    required this.componentType,
    required this.componentId,
  });
}

@HiveType(typeId: 3)
class MetaInfoDBModel extends HiveObject {
  @HiveField(0)
  String label;
  @HiveField(1)
  String componentInputType;
  @HiveField(2)
  String mandatory;
  @HiveField(3)
  List<String>? options;
  @HiveField(4)
  int? noOfImagesToCapture;
  @HiveField(5)
  String? savingFolder;
  @HiveField(6)
  String? imageUri;

  MetaInfoDBModel({
    required this.label,
    required this.mandatory,
    required this.componentInputType,
    this.options,
    this.noOfImagesToCapture,
    this.savingFolder,
    this.imageUri,
  });
}
