import 'package:flutter/material.dart';
import 'package:projectfanap/src/ui/android/pages/AnalyticsPage.dart';
import 'package:projectfanap/src/ui/android/pages/ClientDetailsPage.dart';
import 'package:projectfanap/src/ui/android/pages/ConfigPage.dart';
import 'package:projectfanap/src/ui/android/pages/PermissionPage.dart';
import 'package:projectfanap/src/ui/android/pages/SchedulingCreatePage.dart';
import 'package:projectfanap/src/ui/android/pages/SchedunlingPage.dart';
import 'package:projectfanap/src/ui/android/pages/client-create.page.dart';
import 'package:projectfanap/src/ui/android/pages/client.page.dart';
import 'package:projectfanap/src/ui/android/pages/home.page.dart';
import 'package:projectfanap/src/ui/android/pages/login-signIn.page.dart';
import 'package:projectfanap/src/ui/android/pages/service-create.page.dart';
import 'package:projectfanap/src/ui/android/pages/service-page.dart';
import 'package:projectfanap/src/ui/android/pages/user-create.page.dart';

class RouteGeneratorController{
  static const String ROUTE_CONFING = "/ConfigPage";
  static const String ROUTE_USERCREATE = "/UserCreatePage";
  static const String ROUTE_LOGINSINGIN = "/LoginSignInPage";
  static const String ROUTE_HOME = "/HomePage";
  static const String ROUTE_PEMISSION = "/PermissionPage";

  static const String ROUTE_ANALYTICS = "/AnaliticsPage";

  static const String ROUTE_CLIENT = "/ClientPage";
  static const String ROUTE_CLIENTDETAILS = "/ClientDetailsPage";
  static const String ROUTE_CREATECLIENT = "/CreateClientPage";

  static const String ROUTE_SCHEDUNLING = "/SchedunlingPage";
  static const String ROUTE_CREATESCHEDUNLING = "/CreateSchedulingPage";

  static const String ROUTE_SERVICE = "/ServicePage";
  static const String ROUTE_CREATESERVICE = "/CreateServicePage";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ROUTE_CONFING:
        return MaterialPageRoute(builder: (context) => ConfigPage());
      case ROUTE_USERCREATE:
        return MaterialPageRoute(builder: (context) => UserCreatePage());
      case ROUTE_LOGINSINGIN:
        return MaterialPageRoute(builder: (context) => LoginSignInPage());
      case ROUTE_HOME:
        return MaterialPageRoute(builder: (context) => HomePage());
      case ROUTE_PEMISSION:
        return MaterialPageRoute(builder: (context) => PermissionPage());
      case ROUTE_ANALYTICS:
        return MaterialPageRoute(builder: (context) => AnalyticsPage());
      case ROUTE_CLIENT:
        return MaterialPageRoute(builder: (context) => ClientPage());
      case ROUTE_CLIENTDETAILS:
        return MaterialPageRoute(builder: (context) => ClientDetailsPage());
      case ROUTE_CREATECLIENT:
        return MaterialPageRoute(builder: (context) => ClientCreatePage());
      case ROUTE_SCHEDUNLING:
        return MaterialPageRoute(builder: (context) => SchedunlingPage());
      case ROUTE_CREATESCHEDUNLING:
        return MaterialPageRoute(builder: (context) => SchedulingCreatePage());
      case ROUTE_SERVICE:
        return MaterialPageRoute(builder: (context) => ServicePage());
      case ROUTE_CREATESERVICE:
        return MaterialPageRoute(builder: (context) => ServiceCreatePage());
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
      ),
    );
  }
}
