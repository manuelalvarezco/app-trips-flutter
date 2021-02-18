import 'package:flutter/material.dart';

class ReviewPAge extends StatelessWidget {
  String pathImage = 'assets/images/photo.jpg';
  String user_name = 'Varuna Yass';
  String user_details = '1 review 5 photos';
  String user_comment = 'There is amazing place in Sri Lanka';

  ReviewPAge(
      this.pathImage, this.user_name, this.user_details, this.user_comment);

  @override
  Widget build(BuildContext context) {
    final userComent = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        user_comment,
        style: TextStyle(
            fontSize: 13.0, fontFamily: 'Lato', fontWeight: FontWeight.w900),
      ),
    );
    final userInfo = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        user_details,
        style: TextStyle(
            fontSize: 13.0, fontFamily: 'Lato', color: Color(0xFFa3a5a7)),
      ),
    );

    final photo = Container(
      margin: EdgeInsets.only(left: 20.0, top: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );

    final userName = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        user_name,
        style: TextStyle(fontSize: 17.0, fontFamily: 'Lato'),
      ),
    );

    final userDatails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [userName, userInfo, userComent],
    );

    return Row(
      children: [photo, userDatails],
    );
  }
}
