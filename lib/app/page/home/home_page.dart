import 'package:flutter/material.dart';
import 'package:projeto_fanap/app/page/analytics/analytics.page.dart';
import 'package:projeto_fanap/app/page/client/client_page.dart';
import 'package:projeto_fanap/app/page/product/product.page.dart';
import 'package:projeto_fanap/app/page/sheduling/shedunling.dart';
import 'package:projeto_fanap/app/shared/components/drawer.widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _controllerPage = PageController(initialPage: 0);

  var _scaffoldkey = GlobalKey<ScaffoldState>();

  int controlePagina = 0;
  String _title = "Clientes";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      endDrawer: DrawerWidget(),
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        automaticallyImplyLeading: false,
        title: Text(
          "  ${this._title}",
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              _scaffoldkey.currentState.openEndDrawer();
            },
          )
        ],
      ),
      body: PageView(
        controller: _controllerPage,
        onPageChanged: (index) {
          controlePagina = index;
        },
        children: <Widget>[
          Center(
            child: ClientPage(),
          ),
          Center(
            child: ProductPage(),
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
              if (controlePagina == 0) {
                /* Navigator.pushNamed(
                    context, RouteGeneratorController.ROUTE_CREATESCHEDUNLING); */
              } else if (controlePagina == 1) {
                /* Navigator.pushNamed(
                    context, RouteGeneratorController.ROUTE_CREATESERVICE); */
              } else if (controlePagina == 2) {
                /* Navigator.pushNamed(
                    context, RouteGeneratorController.ROUTE_CREATESCHEDUNLING); */
              }
            },
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
            // elevation: 5.0,
          ),
        ),
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
                    _title = "Clientes";
                    _controllerPage.jumpToPage(0);
                  });
                },
              ),
              IconButton(
                iconSize: 26.0,
                color: Colors.white,
                icon: Icon(
                  Icons.local_mall,
                ),
                onPressed: () {
                  setState(() {
                    _title = "Serviços";
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
                    _title = "Agendamentos";
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
                  setState(
                    () {
                      _title = "Analise de Serviços";
                      _controllerPage.jumpToPage(3);
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}