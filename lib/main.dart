import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trips_flutter/src/routes/route_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays(
        []); //Desabilitar la barra azul en adroid para gradient
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: RoutePage());
  }
}
