import 'package:chat_doc/data/entities/response/get_current_user_response.dart';
import 'package:chat_doc/data/entities/response/validate_otp_response.dart';

import 'package:chat_doc/data/entities/request/validate_otp_request.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../api/api_client/api_client_service.dart';
import 'services/validate_otp_datasource_service.dart';

class ValidateOTPDataSource implements ValidateOTPDataSourceService {
  final APIClientService apiClient;

  ValidateOTPDataSource({required this.apiClient});

  @override
  Future<ValidateOTPResponse> validateOTP(ValidateOTPRequest request) async {
    var response = await apiClient.valdateOTP(request);

    var prefs = await SharedPreferences.getInstance();
    prefs.setString('token', response.value?.token ?? '');

    return response;
  }
}
