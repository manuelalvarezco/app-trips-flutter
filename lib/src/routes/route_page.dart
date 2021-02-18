import 'package:flutter/material.dart';
import 'package:trips_flutter/src/pages/home_page.dart';
import 'package:trips_flutter/src/pages/profile_page.dart';
import 'package:trips_flutter/src/pages/search_page.dart';

class RoutePage extends StatefulWidget {
  @override
  _RoutePageState createState() => _RoutePageState();
}

class _RoutePageState extends State<RoutePage> {
  int indexTap = 0;

  final List<Widget> widgetsChildren = [
    HomePage(),
    SearchPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: Colors.white, primaryColor: Colors.purple),
          child: BottomNavigationBar(
            onTap: onTapTapped,
            currentIndex: indexTap,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: '')
            ],
          )),
    );
  }

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }
}
