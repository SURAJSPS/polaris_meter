import 'package:dartz/dartz.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../common_libs.dart';

class AWSImageUploadRepository extends IAWSImageUploadRepository {
  final Minio minio;
  final INetworkInfo networkInfo;
  AWSImageUploadRepository({required this.minio, required this.networkInfo});

  @override
  Future<Either<Failure, String>> create(String filePath) async {
    try {
      if (await networkInfo.isConnected) {
        final file = File(filePath);
        final stat = await file.stat();
        final bucketName = dotenv.env["BUCKET"]!;

        String fileName = "$bucketName/tasks/suraj/${filePath.split("/").last}";

        final data = await minio.putObject(bucketName, fileName,
            Stream<Uint8List>.value(file.readAsBytesSync()),
            size: stat.size);
        print(data);
        return right(fileName);
      }
      return left(InternetFailure());
    } catch (e) {
      return left(APIServiceFailure(""));
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
