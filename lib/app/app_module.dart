import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_fanap/app/app_controller.dart';
import 'package:projeto_fanap/app/page/splash/splash_module.dart';
import 'package:projeto_fanap/app/shared/utils/setting.dart';
import 'app_widget.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => Dio(BaseOptions(baseUrl: Settings.apiUrl))),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: SplashModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
