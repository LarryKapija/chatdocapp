import 'package:chat_doc/router/routes.dart';

class NamedRoute {
  final AppRoute appRoute;
  final String? overrideRouteName;

  String get routeName => '/${overrideRouteName ?? appRoute.name}';

  NamedRoute({
    required this.appRoute,
    this.overrideRouteName,
  });
}
