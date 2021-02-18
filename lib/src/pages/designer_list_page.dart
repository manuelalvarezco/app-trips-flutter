import 'package:flutter/material.dart';
import 'package:trips_flutter/src/pages/designer_page.dart';

class DesignerListPage extends StatelessWidget {
  const DesignerListPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Bar'),
      ),
      body: ListView(
        children: [
          DesignerPage(),
          DesignerPage(),
          DesignerPage(),
          DesignerPage(),
        ],
      ),
    );
  }
}
