import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart' as retrofit;

import '../../entities/request/request.dart';
import '../../entities/response/response.dart';

part 'api_client_service.g.dart';

@retrofit.RestApi()
abstract class APIClientService {
  factory APIClientService(Dio dio, {String baseUrl}) = _APIClientService;

  @retrofit.POST('/auth/register')
  Future<RegisterUserResponse> registerUser(
      @retrofit.Body() RegisterUserRequest request);

  @retrofit.POST('/auth/sent-otp')
  Future<SentOTPResponse> sentOTP(@retrofit.Body() SentOTPRequest request);

  @retrofit.POST('/auth/validate-otp')
  Future<ValidateOTPResponse> valdateOTP(
      @retrofit.Body() ValidateOTPRequest request);

  @retrofit.GET('/auth/check-user-name/{userName}')
  Future<CheckUserNameResponse> checkIfUserNameExists(
      @retrofit.Path() String userName);

  @retrofit.GET('/get-current-user')
  Future<GetCurrentUserResponse> getCurrentUser(
      @retrofit.Header('Bearer') String token);

  @retrofit.PATCH('/update-profile')
  Future<UpdateExistingProfileResponse> updateProfile(
      @retrofit.Header('Bearer') String token,
      @retrofit.Body() UpdateProfileRequest request);

  @retrofit.POST('/start-new-conversation')
  Future<StartNewConversationResponse> startConversation(
      @retrofit.Header('Bearer') String token,
      @retrofit.Body() StartConversationRequest request);

  @retrofit.GET('/get-users')
  Future<GetUsersResponse> getUsers(
    @retrofit.Header('Bearer') String token,
    @retrofit.Query('filter') String filter,
    @retrofit.Query('startIndex') int startIndex,
    @retrofit.Query('endIndex') int endIndex,
  );
}
