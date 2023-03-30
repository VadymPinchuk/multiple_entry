import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:multientry/routing.dart';

class AmberPage extends StatelessWidget {
  final bool isChained;

  const AmberPage([this.isChained = true]);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () => pop(context),
          ),
          title: Text('Amber'),
          actions: isChained
              ? <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                    onPressed: () => Navigator.of(context).pushNamed(blueRoute),
                  )
                ]
              : [],
        ),
        body: Container(
          color: Colors.amber,
        ),
      );
}

class BluePage extends StatelessWidget {
  final bool isChained;

  const BluePage([this.isChained = true]);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () => pop(context),
          ),
          title: Text('Blue'),
          actions: isChained
              ? <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                    onPressed: () =>
                        Navigator.of(context).pushNamed(purpleRoute),
                  )
                ]
              : [],
        ),
        body: Container(
          color: Colors.blue,
        ),
      );
}

class PurplePage extends StatelessWidget {
  final bool isChained;

  const PurplePage([this.isChained = true]);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () => pop(context),
          ),
          title: Text('Purple'),
          actions: isChained
              ? <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                    onPressed: () =>
                        Navigator.of(context).pushNamed(amberRoute),
                  )
                ]
              : [],
        ),
        body: Container(
          color: Colors.deepPurpleAccent,
        ),
      );
}

void pop(BuildContext context) {
  var navigator = Navigator.of(context);
  if (navigator.canPop()) {
    navigator.pop();
  } else {
    SystemChannels.platform.invokeMethod('SystemNavigator.pop');
  }
}
