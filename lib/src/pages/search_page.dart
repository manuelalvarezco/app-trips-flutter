import 'package:flutter/material.dart';

import 'header_page.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [HeaderPage('Search', 250)],
    );
  }
}
