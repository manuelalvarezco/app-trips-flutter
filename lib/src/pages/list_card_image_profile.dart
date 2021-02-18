import 'package:flutter/material.dart';
import 'package:trips_flutter/src/pages/card_image_profile_page.dart';
import 'package:trips_flutter/src/pages/profile_info_page.dart';

class ListCardImageProfile extends StatelessWidget {
  const ListCardImageProfile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
          ProfileInfoPage(),
          CardImageProfilePage('assets/images/trip01.jpg'),
          CardImageProfilePage('assets/images/trip02.jpg'),
          CardImageProfilePage('assets/images/trip03.jpg'),
          CardImageProfilePage('assets/images/trip04.jpg'),
          CardImageProfilePage('assets/images/trip05.jpg'),
          CardImageProfilePage('assets/images/trip06.jpg'),
        ],
      ),
    );
  }
}
