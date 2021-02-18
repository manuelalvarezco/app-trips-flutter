import 'package:flutter/material.dart';
import 'package:trips_flutter/src/utils/gradient_back.dart';

class HeaderPage extends StatelessWidget {
  String title = 'Bienvenido';
  double height = 250.0;

  HeaderPage(this.title, this.height);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [GradientBack(title, height)],
    );
  }
}
