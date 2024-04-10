import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:polaris_meter/common_libs.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton(() => AppRouter());
  sl.registerLazySingleton(() => ApiService.create());

  sl.registerLazySingleton<IHomeRepository>(() => HomeRepository(
      apiServices: sl(), localDataSourceImpl: sl(), networkInfo: sl()));

  sl.registerLazySingleton<INetworkInfo>(() => NetworkInfo(connectivity: sl()));

  sl.registerLazySingleton<IAWSImageUploadRepository>(
      () => AWSImageUploadRepository(networkInfo: sl(), minio: sl()));

  //
  sl.registerLazySingleton(() => SurveyFormModelToDbObjectMapper());
  sl.registerLazySingleton(() => SurveyFormDBModelToModelObjectMapper());

  sl.registerLazySingleton(
      () => SurveyFormLocalDataSourceImpl(sl(), sl(), sl()));

  // Bloc Injection
  sl.registerLazySingleton(() => HomeBloc(sl()));
  sl.registerLazySingleton(() => InternetBloc(sl(), sl()));

  sl.registerLazySingleton(() => Connectivity());

  sl.registerLazySingleton(() => Minio.init(
        endPoint: dotenv.env["ENPOINT"]!,
        secretKey: dotenv.env["SECRETKEY"]!,
        accessKey: dotenv.env["ACCESSKEY"]!,
        region: dotenv.env["REGION"]!,
        useSSL: true,
      ));
}
