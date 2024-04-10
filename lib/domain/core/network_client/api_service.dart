import 'package:chopper/chopper.dart';
import 'package:polaris_meter/domain/core/config/config_reader.dart';

part 'api_service.chopper.dart';

@ChopperApi(baseUrl: '/')
abstract class ApiService extends ChopperService {
  @Get(path: 'flutter-assignment')
  Future<Response> getSurveyForm();

  @Post(path: 'flutter-assignment/push')
  Future<Response> updateSurveyForm(Map<String, dynamic> bodyParam);

  static ApiService create() {
    return _$ApiService(ChopperClient(
        baseUrl: Uri.tryParse(ConfigReader.getBaseUrl()),
        services: [_$ApiService()],
        interceptors: [
          const HeadersInterceptor({'Cache-Control': 'no-cache'}),
          const HeadersInterceptor({'Content-Type': 'application/json'}),

          // HeadersInterceptor({'X-Client-Type': getClientType()}),
        ],
        converter: const JsonConverter(),
        errorConverter: const JsonConverter()));
  }
}
