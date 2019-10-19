import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Sistema Gerencial"),
      ),
      body: Container(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(92, 42, 100, 1.0),
        foregroundColor: Colors.white,
        elevation: 6,
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 42,
        ),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.people,
                color: Colors.white,
                size: 26,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.assignment_ind,
                color: Colors.white,
                size: 26,
              ),
              onPressed: () {},
            ),
            Icon(
              Icons.insert_chart,
              size: 10,
            ),
            IconButton(
              icon: Icon(
                Icons.assignment_turned_in,
                color: Colors.white,
                size: 26,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.insert_chart,
                color: Colors.white,
                size: 26,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
