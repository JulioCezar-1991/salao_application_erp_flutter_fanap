import 'package:flutter/material.dart';
import 'package:projectfanap/src/RouteGeneratorController.dart';

class DrawerWidget extends StatefulWidget {
  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
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
                  "Julio Cezar Pereira Pinto",
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
            leading: Icon(
              Icons.person_add,
            ),
            title: Text(
              "Criar Usuário",
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, RouteGeneratorController.ROUTE_USERCREATE);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.lock_open,
            ),
            title: Text(
              "Permissões",
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            onTap: () {
              Navigator.pushNamed(
                  context, RouteGeneratorController.ROUTE_PEMISSION);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.build,
            ),
            title: Text(
              "Configurações",
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            onTap: () {
              Navigator.pushNamed(
                  context, RouteGeneratorController.ROUTE_CONFING);
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
            leading: Icon(
              Icons.share,
            ),
            title: Text(
              "Compartilhar",
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.send,
            ),
            title: Text(
              "Sair",
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, RouteGeneratorController.ROUTE_LOGINSINGIN, (contex) => false);
            },
          ),
        ],
      ),
    );
  }
}
