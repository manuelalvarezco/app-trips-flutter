import 'package:flutter/material.dart';
import 'package:trips_flutter/src/pages/card_text_profile_page.dart';

class CardImageProfilePage extends StatelessWidget {
  String pathImage = 'assets/images/trip01.jpg';

  CardImageProfilePage(this.pathImage);

  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: 220.0,
      decoration: BoxDecoration(
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage)),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0))
          ]),
    );

    return Stack(
      alignment: Alignment(0, 0),
      children: [
        card,
        CardTextProfilePage(
            'Knucjles Mountains Range',
            'Hiring Wather tall hurting bath, Scenery & Photography',
            '1132,1321')
      ],
    );
  }
}
