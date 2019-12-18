import 'package:flutter/material.dart';

class CardClientWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      
      elevation: 3,
      child: Row(
        children: <Widget>[
          Container(
            width: 80,
            height: 80,
            child: Center(
              child: Icon(
                Icons.person,
                color: Colors.teal,
                size: 60,
              ),
            ),
          ),
          Container(
            
            width: 200,
            height: 83,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 8, bottom: 2.5),
                  child: Text(
                    "Ana Maria Braga",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.zero,
                  child: Text("Cidade Vera Cruz - AP.Goiânia"),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 2.5, bottom: 4),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "(62) 99699-3020",
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "(62) 3242-1020",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
