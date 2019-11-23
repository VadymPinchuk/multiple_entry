import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:multientry/routing.dart';

class AmberPage extends StatelessWidget {
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
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
              onPressed: () => Navigator.of(context).pushNamed(blueRoute),
            )
          ],
        ),
        body: Container(
          color: Colors.amber,
        ),
      );
}

class BluePage extends StatelessWidget {
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
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
              onPressed: () => Navigator.of(context).pushNamed(purpleRoute),
            )
          ],
        ),
        body: Container(
          color: Colors.blue,
        ),
      );
}

class PurplePage extends StatelessWidget {
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
