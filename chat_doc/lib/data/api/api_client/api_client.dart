import 'package:dio/dio.dart';
import 'api_client_service.dart';
import 'interceptor/curl_log.dart';
import 'interceptor/query.dart';

class APIClient {
  static APIClientService apiClient(
      {required String baseDomain,
      String? identityBaseDomain,
      bool disableRequestBodyLogging = false,
      bool ignoreToken = false,
      bool ignoreConnection = false,
      required String authToken}) {
    final dio = Dio();
    dio.interceptors
        .add(CurlLogInterceptor(disableRequestBody: disableRequestBodyLogging));
    dio.interceptors.add(QueryInterceptor(
        identityBaseDomain: identityBaseDomain,
        ignoreConnection: ignoreConnection,
        ignoreToken: ignoreToken,
        authToken: authToken));
    return APIClientService(dio, baseUrl: baseDomain);
  }
}
