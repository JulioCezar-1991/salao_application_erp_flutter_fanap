import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_fanap/app/modules/customer/Customer_page.dart';
import 'package:projeto_fanap/app/modules/home/home_controller.dart';
import 'package:projeto_fanap/app/modules/setting/setting_page.dart';

class DrawerHomeWidget extends StatefulWidget {
  @override
  _DrawerHomeWidgetState createState() => _DrawerHomeWidgetState();
}

class _DrawerHomeWidgetState extends State<DrawerHomeWidget> {
  final controller = Modular.get<HomeController>();
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Column(
              children: <Widget>[
                Image.asset(
                  'assets/logo.png',
                  scale: 6.1,
                ),
                Text(
                  "Julio Cezar",
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  "Administrador",
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
              ],
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
            ),
            decoration: BoxDecoration(color: Colors.black26),
          ),
          ListTile(
            leading:
                Icon(Icons.person_add, color: Theme.of(context).accentColor),
            title: Text(
              "Gerenciar Usuários",
              style: TextStyle(
                  fontSize: 16.0, color: Theme.of(context).accentColor),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => CustomerPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.build, color: Theme.of(context).accentColor),
            title: Text(
              "Configurações",
              style: TextStyle(
                  fontSize: 16.0, color: Theme.of(context).accentColor),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => SettingPage()),
              );
            },
          ),
          SizedBox(
            height: _size.width / 1.8,
          ),
          Divider(
            endIndent: 18,
            indent: 18,
          ),
          ListTile(
            leading: Icon(Icons.share, color: Theme.of(context).accentColor),
            title: Text(
              "Compartilhar",
              style: TextStyle(
                  fontSize: 16.0, color: Theme.of(context).accentColor),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.send, color: Theme.of(context).accentColor),
            title: Text(
              "Sair",
              style: TextStyle(
                  fontSize: 16.0, color: Theme.of(context).accentColor),
            ),
            onTap: () {
              controller.clearPrefs();
            },
          ),
        ],
      ),
    );
  }
}
