import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_fanap/app/modules/analytics/analytics_page.dart';
import 'package:projeto_fanap/app/modules/client/client_controller.dart';
import 'package:projeto_fanap/app/modules/client/client_create_page.dart';
import 'package:projeto_fanap/app/modules/client/client_page.dart';
import 'package:projeto_fanap/app/modules/product/product_page.dart';
import 'package:projeto_fanap/app/modules/product/product_controller.dart';
import 'package:projeto_fanap/app/modules/product/product_create.page.dart';
import 'package:projeto_fanap/app/modules/sheduling/shedunling_page.dart';
import 'package:projeto_fanap/app/shared/components/drawer_home_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _controllerPage = PageController(initialPage: 0);
  final _clientController = Modular.get<ClientController>();
  final _productController = Modular.get<ProductController>();

  var _scaffoldkey = GlobalKey<ScaffoldState>();

  int _controlePagina = 0;
  String _title = "Clientes";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      endDrawer: DrawerHomeWidget(),
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        automaticallyImplyLeading: false,
        title: Text(
          "  ${this._title}",
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              if (_controlePagina == 0) {
                _clientController.fetchClient();
              }
              if (_controlePagina == 1) {
                _productController.fetchProduct();
              }
            },
          ),
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              _scaffoldkey.currentState.openEndDrawer();
            },
          ),
        ],
      ),
      body: PageView(
        controller: _controllerPage,
        onPageChanged: (index) {
          _controlePagina = index;
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
              if (_controlePagina == 0) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ClientCreatePage(),
                  ),
                );
              } else if (_controlePagina == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductCreatePage(),
                  ),
                );
              } else if (_controlePagina == 2) {
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
