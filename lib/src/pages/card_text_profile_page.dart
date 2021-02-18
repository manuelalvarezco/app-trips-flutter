import 'package:flutter/material.dart';
import 'package:trips_flutter/src/utils/floating_action_button_green.dart';

class CardTextProfilePage extends StatelessWidget {
  String cardTitle = 'Knucjles Mountains Range';
  String cardSubtitle =
      'Hiring Wather tall hurting bath, Scenery & Photography';
  String cardSteps = '123,123,123';

  CardTextProfilePage(this.cardTitle, this.cardSubtitle, this.cardSteps);

  @override
  Widget build(BuildContext context) {
    final card = Container(
        margin: EdgeInsets.only(top: 180.0),
        height: 120.0,
        width: 290.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            shape: BoxShape.rectangle,
            boxShadow: [
              BoxShadow(
                  color: Colors.black45,
                  blurRadius: 15.0,
                  offset: Offset(0.0, 7.0))
            ]),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: ListTile(
            contentPadding: EdgeInsets.only(top: 16, left: 16, right: 16),
            title: Text(
              cardTitle,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Lato'),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 8,
                ),
                Text(cardSubtitle, style: TextStyle(fontSize: 12)),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Steps $cardSteps',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.bold,
                      color: Colors.orange[600]),
                )
              ],
            ),
          ),
        ));

    return Stack(
      alignment: Alignment(0.8, 1),
      children: [card, FloatingActionButtonGreen()],
    );
  }
}
