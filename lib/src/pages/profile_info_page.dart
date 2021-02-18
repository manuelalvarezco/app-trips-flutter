import 'package:flutter/material.dart';

class ProfileInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 100),
      child: Column(
        children: [
          ListTile(
            leading: Container(
              height: 68,
              width: 58,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(50)),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://randomuser.me/api/portraits/women/65.jpg'),
              ),
            ),
            title: Text(
              'Pathum Tzoo',
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text('pathumtzoo1@gmail.com',
                style: TextStyle(color: Colors.white)),
            trailing: Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          listIcons()
        ],
      ),
    );
  }

  Widget listIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FloatingActionButton(
          backgroundColor: Colors.white,
          child: Icon(
            Icons.bookmark_border,
            color: Colors.indigo,
          ),
          mini: true,
          onPressed: () {},
        ),
        FloatingActionButton(
          backgroundColor: Colors.white,
          child: Icon(
            Icons.redeem,
            color: Colors.indigo,
          ),
          mini: true,
          onPressed: () {},
        ),
        FloatingActionButton(
          backgroundColor: Colors.white,
          child: Icon(
            Icons.add,
            color: Colors.indigo,
          ),
          onPressed: () {},
        ),
        FloatingActionButton(
          backgroundColor: Colors.white,
          child: Icon(
            Icons.email_sharp,
            color: Colors.indigo,
          ),
          mini: true,
          onPressed: () {},
        ),
        FloatingActionButton(
          backgroundColor: Colors.white,
          child: Icon(
            Icons.person,
            color: Colors.indigo,
          ),
          mini: true,
          onPressed: () {},
        )
      ],
    );
  }
}
