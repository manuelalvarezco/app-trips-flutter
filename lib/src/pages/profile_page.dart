import 'package:flutter/material.dart';
import 'package:trips_flutter/src/pages/header_page.dart';
import 'package:trips_flutter/src/pages/list_card_image_profile.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Stack(
          children: [HeaderPage('Profile', 350)],
        ),
        ListCardImageProfile(),
      ],
    );
  }
}
