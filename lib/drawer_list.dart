

import 'package:flutter/material.dart';


class DrawerList extends StatelessWidget {
  const DrawerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          SafeArea(
            child: UserAccountsDrawerHeader(
                accountName: Text('Luciano'),
                accountEmail: Text('luciano@gmai.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/images/dog1.jpg"
                  ),
                ),),
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Favoritos'),
            subtitle: Text('Mais informações'),
            trailing: Icon(Icons.arrow_forward),
            onTap:(){
              print('Favoritos');
              Navigator.pop(context);
            }
          ),
          ListTile(
              leading: Icon(Icons.link),
              title: Text('Saiba mais'),
              subtitle: Text('Mais informações'),
              trailing: Icon(Icons.arrow_forward),
              onTap:(){
                print('Saiba mais');
                Navigator.pop(context);
              }
          ),
        ],
      ),
    );
  }
}
