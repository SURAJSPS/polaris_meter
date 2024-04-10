import 'package:dartz/dartz.dart';
import 'package:polaris_meter/common_libs.dart';

abstract class IAWSImageUploadRepository {
  Future<Either<Failure, String>> create(String filePath);

  Future<Either<Failure, Unit>> read();

  Future<Either<Failure, Unit>> update();

  Future<Either<Failure, Unit>> delete();
}
