import 'package:flutter/material.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';

class FloatingButtonMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FabCircularMenu(
      ringColor: Theme.of(context).primaryColor.withOpacity(0.05),
      animationDuration: Duration(seconds: 001),
      fabCloseIcon: Icon(
        Icons.clear,
        color: Colors.white,
      ),
      fabOpenIcon: Icon(
        Icons.settings,
        color: Colors.white,
      ),
      ringWidth: 30,
      ringDiameter: 125,
      fabSize: 26,
      children: <Widget>[
        IconButton(
            icon: Icon(
              Icons.home,
              color: Theme.of(context).primaryColor,
            ),
            onPressed: () {
              print('Home');
            }),
        IconButton(
          icon: Icon(
            Icons.settings,
            color: Theme.of(context).primaryColor,
          ),
          onPressed: () {
            print('Favorite');
          },
        )
      ],
    );
  }
}
