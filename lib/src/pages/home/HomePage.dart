import 'package:flutter/material.dart';
import 'package:projectfanap/src/pages/home/analytic/AnalyticsPage.dart';
import 'package:projectfanap/src/pages/home/client/ClientPage.dart';
import 'package:projectfanap/src/pages/home/scheduling/SchedunlingPage.dart';
import 'package:projectfanap/src/pages/home/service/ServicePage.dart';
import 'package:projectfanap/src/widgets/CreateClientWidget.dart';
import 'package:projectfanap/src/widgets/ServiceCreateWidget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _controllerPage = PageController(initialPage: 0);

  int controlePagina = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Sistema Gerencial"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 50,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                iconSize: 26.0,
                color: Colors.white,
                icon: Icon(Icons.people),
                onPressed: () {
                  setState(() {
                    _controllerPage.jumpToPage(0);
                  });
                },
              ),
              IconButton(
                iconSize: 26.0,
                color: Colors.white,
                icon: Icon(Icons.star_border),
                onPressed: () {
                  setState(() {
                    _controllerPage.jumpToPage(1);
                  });
                },
              ),
              SizedBox(
                height: 60,
              ),
              IconButton(
                iconSize: 26.0,
                color: Colors.white,
                icon: Icon(Icons.perm_contact_calendar),
                onPressed: () {
                  setState(() {
                    _controllerPage.jumpToPage(2);
                  });
                },
              ),
              IconButton(
                iconSize: 26.0,
                color: Colors.white,
                icon: Icon(
                  Icons.insert_chart,
                ),
                onPressed: () {
                  setState(() {
                    _controllerPage.jumpToPage(3);
                  });
                },
              )
            ],
          ),
        ),
      ),
      body: PageView(
        controller: _controllerPage,
        onPageChanged: (int) {
          controlePagina = int;
          print('Page Changes to index $int');
        },
        children: <Widget>[
          Center(
            child: ClientPage(),
          ),
          Center(
            child: ServicePage(),
          ),
          Center(
            child: SchedunlingPage(),
          ),
          Center(
            child: AnalyticsPage(),
          ),
        ],
        physics: NeverScrollableScrollPhysics(),
      ),
      floatingActionButton: Container(
        height: 65.0,
        width: 65.0,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {
              if(controlePagina == 0){
                CreateClientWidget.clientCreate(context);
              } else if  (controlePagina == 1){
                ServiceCreateWidget.createService(context);
              }
              debugPrint("Page 1");
            },
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
            // elevation: 5.0,
          ),
        ),
      ),
    );
  }
}


