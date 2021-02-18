import 'package:flutter/material.dart';
import 'package:trips_flutter/src/pages/image_page.dart';

class ImageListPage extends StatelessWidget {
  const ImageListPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(20.0),
        scrollDirection: Axis.horizontal,
        children: [
          ImagePage('assets/images/trip01.jpg'),
          ImagePage('assets/images/trip02.jpg'),
          ImagePage('assets/images/trip03.jpg'),
          ImagePage('assets/images/trip04.jpg'),
          ImagePage('assets/images/trip05.jpg'),
          ImagePage('assets/images/trip06.jpg'),
        ],
      ),
    );
  }
}
