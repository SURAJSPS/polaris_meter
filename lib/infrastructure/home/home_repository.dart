import 'package:dartz/dartz.dart';
import 'package:polaris_meter/common_libs.dart';
import 'package:polaris_meter/domain/core/network/network_info.dart';
import 'package:polaris_meter/domain/local/repository/survey_form_repository.dart';

class HomeRepository implements IHomeRepository {
  final ApiService apiServices;
  final INetworkInfo networkInfo;

  final SurveyFormLocalDataSourceImpl localDataSourceImpl;
  HomeRepository(
      {required this.apiServices,
      required this.localDataSourceImpl,
      required this.networkInfo});

  @override
  Future<Either<Failure, Unit>> create(SurveyForm surveyData) async {
    final response = await localDataSourceImpl.create(surveyData);
    return response.fold((l) => left(l), (r) => right(unit));
  }

  @override
  Future<Either<Failure, Unit>> delete() {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, SurveyForm>> read() async {
    try {
      if (await networkInfo.isConnected) {
        final response = await apiServices.getSurveyForm();

        if (response.isSuccessful) {
          final resp = SurveyFormDtos.fromJson(response.body).toDomain();
          return right(resp);
        }
        return left(APIServiceFailure(""));
      } else {
        final localData = await AppUtil.localJson();
        return right(SurveyFormDtos.fromJson(localData).toDomain());
      }
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> update() async {
    try {
      final localDataResponse = await localDataSourceImpl.reade();
      return localDataResponse.fold(
        (failure) => left(failure), // Return left(failure) if reade() fails
        (surveyForm) async {
          if (surveyForm.isNotEmpty) {
            final surveyFormsDtos = surveyForm
                .map((surveyForm) => surveyForm.toDtos().toJson())
                .toList();

            final bodyParam = {"data": surveyFormsDtos};

            final isConnected = await networkInfo.isConnected;
            if (isConnected) {
              final response = await apiServices.updateSurveyForm(bodyParam);
              if (response.isSuccessful) {
                await localDataSourceImpl.delete();
                print("Data inserted successfully");
                return right(unit); // Return right(unit) on success
              } else {
                return left(ServerFailure());
              }
            }
            return left(InternetFailure());
          } else {
            return right(unit); // Return right(unit) if surveyForm is empty
          }
        },
      );
    } catch (e) {
      return left(APIServiceFailure(e.toString()));
    }
  }
}
