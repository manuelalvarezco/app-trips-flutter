import 'package:flutter/material.dart';
import 'package:trips_flutter/src/pages/description_place.dart';
import 'package:trips_flutter/src/pages/header_page.dart';
import 'package:trips_flutter/src/pages/imagelist_page.dart';
import 'package:trips_flutter/src/pages/reviewlist_page.dart';

class HomePage extends StatelessWidget {
  final descriptionPlace =
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book';

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ListView(
        children: [
          DescriptionPlace('Bahamas', 4, descriptionPlace),
          ReviewListPage(),
        ],
      ),
      Stack(
        children: [HeaderPage('Bienvenido', 250), ImageListPage()],
      )
    ]);
  }
}
