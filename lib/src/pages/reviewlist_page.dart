import 'package:flutter/material.dart';
import 'package:trips_flutter/src/pages/review_page.dart';

class ReviewListPage extends StatelessWidget {
  String pathImage = 'assets/images/photo.jpg';
  String user_name = 'Varuna Yass';
  String user_details = '1 review 5 photos';
  String user_comment = 'There is amazing place in Sri Lanka';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ReviewPAge(pathImage, user_name, user_details, user_comment),
        ReviewPAge(pathImage, user_name, user_details, user_comment),
        ReviewPAge(pathImage, user_name, user_details, user_comment),
      ],
    );
  }
}
