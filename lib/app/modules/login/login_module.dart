import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_fanap/app/modules/home/home_module.dart';
import 'package:projeto_fanap/app/modules/login/login_controller.dart';
import 'package:projeto_fanap/app/modules/login/login_page.dart';
import 'package:projeto_fanap/app/shared/repositories/login_repository.dart';

class LoginModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => LoginController(i.get<LoginRepository>())),
        Bind((i) => LoginRepository(i.get<Dio>())),
      ];

  @override
  List<Router> get routers => [
        Router('/login', child: (_, args) => LoginPage()),
        Router('/home', module: HomeModule())
      ];

  static Inject get to => Inject<LoginModule>.of();
}
