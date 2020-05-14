import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_fanap/app/modules/home/home_module.dart';
import 'package:projeto_fanap/app/modules/user/user_controller.dart';
import 'package:projeto_fanap/app/modules/user/user_page.dart';
import 'package:projeto_fanap/app/shared/repositories/user_repository.dart';

class UserModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => UserController(i.get<UserRepository>())),
        Bind((i) => UserRepository(i.get<Dio>())),
      ];

  @override
  List<Router> get routers => [
        Router('/user', child: (_, args) => UserPage()),
        Router('/home', module: HomeModule())
      ];
}
