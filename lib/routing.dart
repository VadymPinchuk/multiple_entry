import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:multientry/pages.dart';

const String amberRoute = "/amber";
const String blueRoute = "/blue";
const String purpleRoute = "/purple";

Route<dynamic> generateRoute(RouteSettings settings, String initial) {
  switch (initial) {
    case amberRoute:
      return _amberRoutes(settings);
    case blueRoute:
      return _blueRoutes(settings);
    case purpleRoute:
    default:
      return _purpleRoutes(settings);
  }
}

Route<dynamic> _amberRoutes(RouteSettings settings) {
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

Route<dynamic> _blueRoutes(RouteSettings settings) {
  switch (settings.name) {
    case purpleRoute:
      return CupertinoPageRoute(builder: (context) => PurplePage());
    case blueRoute:
    default:
      return CupertinoPageRoute(builder: (context) => BluePage());
  }
}

Route<dynamic> _purpleRoutes(RouteSettings settings) {
  return CupertinoPageRoute(builder: (context) => PurplePage());
}
