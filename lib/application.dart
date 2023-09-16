import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:multientry/routing.dart';

class MultiEntryApp extends StatefulWidget {
  final String initialRoute;
  final MaterialColor primaryColor;

  MultiEntryApp({
    super.key,
    required this.initialRoute,
    required this.primaryColor,
  });

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
        onGenerateRoute: (RouteSettings settings) =>
            generateRoute(settings, widget.initialRoute),
      );
}
