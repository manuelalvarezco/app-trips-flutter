import 'package:flutter/material.dart';
import 'package:trips_flutter/src/pages/reviewlist_page.dart';
import 'package:trips_flutter/src/utils/button_gradient.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int star;
  String descriptionPlace;

  //Contructor
  DescriptionPlace(this.namePlace, this.star, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    final star_half = Container(
        margin: EdgeInsets.only(top: 323.0, right: 3.0),
        child: Icon(
          Icons.star_half,
          color: Color(0xFFf2C611),
        ));

    final star_border = Container(
        margin: EdgeInsets.only(top: 350.0, right: 3.0),
        child: Icon(
          Icons.star_border,
          color: Color(0xFFf2C611),
        ));

    final star = Container(
      margin: EdgeInsets.only(top: 350.0, right: 3.0),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final description = Container(
      margin: EdgeInsets.only(top: 23.0, left: 20.0, right: 20.0),
      child: Text(
        descriptionPlace,
        style: TextStyle(fontSize: 16.0),
      ),
    );

    final title_stars = Row(
      children: [
        Container(
          margin: EdgeInsets.only(top: 350.0, left: 20.0, right: 20.0),
          child: Text(
            namePlace,
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w900,
                fontFamily: 'Lato'),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: [star, star, star, star, star_border],
        ),
      ],
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [title_stars, description, ButtonGradient('Navigate')],
    );
  }
}
