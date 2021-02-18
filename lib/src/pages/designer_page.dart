import 'package:flutter/material.dart';

class DesignerPage extends StatelessWidget {
  String pathImage = 'https://randomuser.me/api/portraits/women/21.jpg';
  String designerName = 'Amanda Murphy';
  String designerExperience = 'Experience: 15 years';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 0.0,
        child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(pathImage),
              radius: 30,
            ),
            title: Text(designerName),
            subtitle: Text(designerExperience),
            trailing: Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(50)),
                child: Icon(Icons.email, color: Colors.white))),
      ),
    );
  }
}
