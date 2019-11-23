import 'package:flutter/material.dart';
import 'package:multientry/application.dart';
import 'package:multientry/routing.dart';

void main() => runApp(
      MultiEntryApp(
        initialRoute: amberRoute,
        primaryColor: Colors.blueGrey,
      ),
    );

void blue() => runApp(
      MultiEntryApp(
        initialRoute: blueRoute,
        primaryColor: Colors.teal,
      ),
    );

void purple() => runApp(
      MultiEntryApp(
        initialRoute: purpleRoute,
        primaryColor: Colors.red,
      ),
    );
