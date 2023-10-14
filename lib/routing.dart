import 'package:flutter/cupertino.dart';
import 'package:multientry/pages.dart';

const String defaultRoute = "/";
const String amberRoute = "/amber";
const String blueRoute = "/blue";
const String purpleRoute = "/purple";

Route<dynamic> generateRoute(RouteSettings settings, String initial) {
  switch (initial) {
    case blueRoute:
      return CupertinoPageRoute(
          builder: (context) => BluePage(false));
    case purpleRoute:
      return CupertinoPageRoute(
          builder: (context) => PurplePage(false));
    case amberRoute:
      return CupertinoPageRoute(
          builder: (context) => AmberPage(false));
    default:
      return _allRoutes(settings);
  }
}

Route<dynamic> _allRoutes(RouteSettings settings) {
  switch (settings.name) {
    case blueRoute:
      return CupertinoPageRoute(builder: (context) => BluePage());
    case purpleRoute:
      return CupertinoPageRoute(builder: (context) => PurplePage());
    case amberRoute:
    default:
      return CupertinoPageRoute(builder: (context) => AmberPage());
  }
}
