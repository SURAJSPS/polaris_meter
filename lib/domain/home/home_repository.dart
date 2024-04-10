import 'package:dartz/dartz.dart';
import 'package:polaris_meter/common_libs.dart';

abstract class IHomeRepository {
  Future<Either<Failure, Unit>> create(SurveyForm surveyData);

  Future<Either<Failure, SurveyForm>> read();

  Future<Either<Failure, Unit>> update();

  Future<Either<Failure, Unit>> delete();
}
