

import 'package:flutter/material.dart';


class DrawerList extends StatelessWidget {
  const DrawerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Favoritos'),
            subtitle: Text('Mais informações'),
            trailing: Icon(Icons.arrow_forward),
            onTap:(){
              print('Favoritos');
              Navigator.pop(context);
            }
          )
        ],
      )
    );
  }
}
