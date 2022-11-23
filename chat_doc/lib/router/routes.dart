import 'named_route.dart';

enum AppRoute {
  unknown,
  login,
  validateOtp,
  register,
  home,
}

class Routes {
  static NamedRoute get login => NamedRoute(appRoute: AppRoute.login);

  static NamedRoute get unknown => NamedRoute(appRoute: AppRoute.unknown);

  static NamedRoute get home => NamedRoute(appRoute: AppRoute.home);

  static NamedRoute get validateOtp =>
      NamedRoute(appRoute: AppRoute.validateOtp);

  static NamedRoute get register => NamedRoute(appRoute: AppRoute.register);

  static List<NamedRoute> values = [
    unknown,
    login,
    validateOtp,
    register,
    home,
  ];
}
