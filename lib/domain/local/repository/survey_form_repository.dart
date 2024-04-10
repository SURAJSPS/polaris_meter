import 'package:dartz/dartz.dart';
import 'package:polaris_meter/common_libs.dart';
import 'package:polaris_meter/domain/aws_image_upload/aws_image_repository.dart';

const dbName = "SurveyForm";

abstract class LocalDataSource<L, R> {
  Future<Either<L, R>> create(SurveyForm data);

  Future<Either<L, R>> reade();

  Future<Either<L, R>> update();

  Future<Either<L, R>> delete();
}

class SurveyFormLocalDataSourceImpl
    implements LocalDataSource<Failure, List<SurveyForm>> {
  final SurveyFormModelToDbObjectMapper surveyFormModelToDbObjectMapper;
  final SurveyFormDBModelToModelObjectMapper
      surveyFormDBModelToModelObjectMapper;
  final IAWSImageUploadRepository awsS3;

  SurveyFormLocalDataSourceImpl(this.surveyFormDBModelToModelObjectMapper,
      this.surveyFormModelToDbObjectMapper, this.awsS3);

  @override
  Future<Either<Failure, List<SurveyForm>>> delete() async {
    Box? hiveBox;
    try {
      if (!Hive.isBoxOpen(dbName)) {
        hiveBox = await Hive.openBox(dbName);
      } else {
        hiveBox = Hive.box(dbName);
      }
      await hiveBox.clear();
      print("<<=============== Local DB Clear ====================>>");
      return right([]);
    } catch (e) {
      return left(DatabaseFailure(""));
    }
  }

  @override
  Future<Either<Failure, List<SurveyForm>>> update() {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<SurveyForm>>> create(SurveyForm data) async {
    try {
      final authHive = await Hive.openBox(dbName);
      SurveyFormDBModel surveyFormDBModel =
          surveyFormModelToDbObjectMapper.call(data);

      final id = await authHive.add(surveyFormDBModel);
      debugPrint(id.toString());
      return right([data]);
    } catch (e) {
      return left(DatabaseFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<SurveyForm>>> reade() async {
    bool isCompleter = true;

    Box? hiveBox;
    try {
      if (!Hive.isBoxOpen(dbName)) {
        hiveBox = await Hive.openBox(dbName);
      } else {
        hiveBox = Hive.box(dbName);
      }

      List surveyFormData = hiveBox.values.toList();

      if (surveyFormData.isNotEmpty) {
        List<SurveyForm> updatedSurveyFormList = await Future.wait(
            surveyFormData
                .map((surveyForm) =>
                    surveyFormDBModelToModelObjectMapper.call(surveyForm))
                .map((surveyForm) async {
          List<Field> updatedFields =
              await Future.wait(surveyForm.fields.map((field) async {
            if (field.isRequired &&
                field.componentType == "CaptureImages" &&
                field.formValue != null) {
              return field.copyWith(
                  formValue:
                      (await awsS3.create(field.formValue!)).getOrElse(() {
                isCompleter = false;

                return "";
              }));
            }
            return field;
          }));

          return surveyForm.copyWith(fields: updatedFields);
        }).toList());

        if (isCompleter) {
          return right(updatedSurveyFormList);
        } else {
          return left(InternetFailure());
        }
      }

      return left(DatabaseFailure(""));
    } catch (e) {
      return left(DatabaseFailure(e.toString()));
    }
  }
}
