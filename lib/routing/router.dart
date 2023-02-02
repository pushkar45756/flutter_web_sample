import 'package:flutter/material.dart';
import 'package:flutter_web_sample/pages/auth/authentication.dart';
import 'package:flutter_web_sample/pages/clients/clients.dart';
import 'package:flutter_web_sample/pages/drivers/drivers.dart';
import 'package:flutter_web_sample/pages/overview/overview.dart';
import 'package:flutter_web_sample/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case overViewPageRoute:
      return _getPageRoute(const OverviewPage());
    case driverPageRoute:
      return _getPageRoute(const DriverPage());
    case clientsPageRoute:
      return _getPageRoute(const ClientPage());
    case authenticationPageRoute:
      return _getPageRoute(const AuthPage());
    default:
      return _getPageRoute(const AuthPage());
  }
}

_getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
