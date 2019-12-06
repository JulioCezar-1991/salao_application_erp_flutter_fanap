import 'package:flutter/material.dart';
import 'package:projectfanap/src/screen/ConfigScreen.dart';
import 'package:projectfanap/src/screen/PermissionScreen.dart';
import 'package:projectfanap/src/screen/home/HomeScreen.dart';
import 'package:projectfanap/src/screen/login/LoginSignInScreen.dart';
import 'package:projectfanap/src/screen/home/analytic/AnalyticsScreen.dart';
import 'package:projectfanap/src/screen/home/client/ClientDetailsScreen.dart';
import 'package:projectfanap/src/screen/home/client/ClientScreen.dart';
import 'package:projectfanap/src/screen/home/client/CreateClientScreen.dart';
import 'package:projectfanap/src/screen/home/scheduling/CreateSchedulingScreen.dart';
import 'package:projectfanap/src/screen/home/scheduling/SchedunlingScreen.dart';
import 'package:projectfanap/src/screen/home/service/CreateServiceScreen.dart';
import 'package:projectfanap/src/screen/home/service/ServiceScreen.dart';

class RouteGeneratorController {
  static const String ROUTE_CONFING = "/ConfigScreen";
  static const String ROUTE_LOGINSINGIN = "/LoginSignInScreen";
  static const String ROUTE_HOME = "/HomeScreen";
  static const String ROUTE_PEMISSION = "/PermissionScreen";

  static const String ROUTE_ANALYTICS = "/AnaliticsScreen";

  static const String ROUTE_CLIENT = "/ClientScreen";
  static const String ROUTE_CLIENTDETAILS = "/ClientDetailsScreen";
  static const String ROUTE_CREATECLIENT = "/CreateClientScreen";

  static const String ROUTE_SCHEDUNLING = "/SchedunlingScreen";
  static const String ROUTE_CREATESCHEDUNLING = "/CreateSchedulingScreen";

  static const String ROUTE_SERVICE = "/ServiceScreen";
  static const String ROUTE_CREATESERVICE = "/CreateServiceScreen";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ROUTE_CONFING:
        return MaterialPageRoute(builder: (context) => ConfigScreen());
      case ROUTE_LOGINSINGIN:
        return MaterialPageRoute(builder: (context) => LoginSignInScreen());
      case ROUTE_HOME:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case ROUTE_PEMISSION:
        return MaterialPageRoute(builder: (context) => PermissionScreen());
      case ROUTE_ANALYTICS:
        return MaterialPageRoute(builder: (context) => AnalyticsScreen());
      case ROUTE_CLIENT:
        return MaterialPageRoute(builder: (context) => ClientScreen());
      case ROUTE_CLIENTDETAILS:
        return MaterialPageRoute(builder: (context) => ClientDetailsScreen());
      case ROUTE_CREATECLIENT:
        return MaterialPageRoute(builder: (context) => CreateClientScreen());
      case ROUTE_SCHEDUNLING:
        return MaterialPageRoute(builder: (context) => SchedunlingScreen());
      case ROUTE_CREATESCHEDUNLING:
        return MaterialPageRoute(builder: (context) => CreateSchedulingScreen());
      case ROUTE_SERVICE:
        return MaterialPageRoute(builder: (context) => ServiceScreen());
      case ROUTE_CREATESERVICE:
        return MaterialPageRoute(builder: (context) => CreateServiceScreen());
      default:
        _erroRota();
    }
    return null;
  }

  static Route<dynamic> _erroRota() {
    return MaterialPageRoute(
        builder: (context) => Scaffold(
              appBar: AppBar(
                title: Text("Tela Não Encontrada"),
              ),
              body: Center(
                child: Text("Tela Não Encontrada"),
              ),
            ));
  }
}
