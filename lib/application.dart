import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:multientry/routing.dart';

class MultiEntryApp extends StatefulWidget {
  final String initialRoute;
  final Color primaryColor;

  MultiEntryApp({
    Key key,
    @required this.initialRoute,
    @required this.primaryColor,
  }) : super(key: key);

  @override
  _MultiEntryAppState createState() => _MultiEntryAppState();
}

class _MultiEntryAppState extends State<MultiEntryApp> {
  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData(
          primarySwatch: widget.primaryColor,
        ),
        initialRoute: '/',
        onGenerateRoute: (RouteSettings settings) => generateRoute(settings, widget.initialRoute),
      );
}
