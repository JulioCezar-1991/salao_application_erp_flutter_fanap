import 'package:flutter/material.dart';

PreferredSizeWidget appBar() {
  return AppBar(
    automaticallyImplyLeading: false,
    title: Text("Teste"),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.refresh),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {},
      ),
    ],
  );
}
