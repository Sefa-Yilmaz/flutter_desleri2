import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {
  DrawerMenu({Key? key}) : super(key: key);

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Sefa yılmaz'),
            accountEmail: Text('sefa@gmail.com'),
            otherAccountsPictures: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.black,
                child: Text('SY'),
              ),
              CircleAvatar(
                backgroundColor: Colors.black,
                child: Text('SY'),
              )
            ],
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Ana Sayfa'),
                  trailing: Icon(Icons.chevron_right),
                ),
                ListTile(
                  leading: Icon(Icons.call),
                  title: Text('Ara'),
                  trailing: Icon(Icons.chevron_right),
                ),
                ListTile(
                  leading: Icon(Icons.account_box),
                  title: Text('Profil'),
                  trailing: Icon(Icons.chevron_right),
                ),
                Divider(),
                InkWell(
                  onTap: () {},
                  splashColor: Colors.red,
                  child: ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Anasayfa'),
                    trailing: Icon(Icons.credit_card),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
