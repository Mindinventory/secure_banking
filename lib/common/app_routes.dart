import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';


final routes = [
  GetPage(
    name: Routes.root,
    page: () => Container(),
  ),
  GetPage(
    name: Routes.login,
    page: () => Container(),
  ),
];

abstract class Routes {
  static const root = '/';
  static const login = '/login';
}
