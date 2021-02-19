import 'package:flutter/material.dart';
import 'package:trips_flutter/src/routes/route_page.dart';
import 'package:trips_flutter/src/ui/movie_list.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App trips',
      home: MovieList(),
    );
  }
}
