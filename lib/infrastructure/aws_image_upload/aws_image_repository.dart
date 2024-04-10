import 'package:dartz/dartz.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../common_libs.dart';

class AWSImageUploadRepository extends IAWSImageUploadRepository {
  final Minio minio;
  final INetworkInfo networkInfo;
  AWSImageUploadRepository({required this.minio, required this.networkInfo});

  @override
  // Future<Either<Failure, String>> create(String filePath) async {
  //   try {
  //     if (await networkInfo.isConnected) {
  //       final file = File(filePath);
  //       final stat = await file.stat();
  //       const bucketName = "flutter-aws-bucket";
  //
  //       String fileName = "$bucketName/tasks/suraj/${filePath.split("/").last}";
  //
  //       await minio.putObject(bucketName, fileName,
  //           Stream<Uint8List>.value(file.readAsBytesSync()),
  //           size: stat.size);
  //
  //       return right(fileName);
  //     }
  //     return left(InternetFailure());
  //   } catch (e) {
  //     return left(APIServiceFailure(""));
  //   }
  // }

  Future<Either<Failure, String>> create(String filePath) async {
    try {
      if (!(await networkInfo.isConnected)) {
        return left(InternetFailure());
      }

      final file = File(filePath);

      ///TODO:  Add Bucket Name
      final bucketName = dotenv.env["REGION"]!;
      final fileName = "$bucketName/tasks/suraj/${filePath.split("/").last}";

      final stream = file.openRead().cast<Uint8List>();

      return await minio.putObject(bucketName, fileName, stream).then((value) =>
          Future.delayed(const Duration(milliseconds: 900))
              .then((value) => right(fileName)));
    } catch (e) {
      return left(APIServiceFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> delete() {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> read() {
    // TODO: implement read
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> update() {
    // TODO: implement update
    throw UnimplementedError();
  }
}
