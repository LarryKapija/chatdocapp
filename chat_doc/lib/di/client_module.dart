import 'package:chat_doc/di/config_module.dart';

import '../data/api/api_client/api_client.dart';
import '../data/api/api_client/api_client_service.dart';
import '../data/database/database.dart';
import '../data/database/database_service.dart';

mixin ClientModule on ConfigModule {
  /// API/REST Client
  APIClientService get apiClient {
    return APIClient.apiClient(
        baseDomain: appConfig.baseDomain, authToken: appSecureConfig.authToken);
  }

  /// DataBase
  DataBaseService get dataBaseClient {
    return DataBase();
  }
}
