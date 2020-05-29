import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_fanap/app/modules/home/home_module.dart';
import 'package:projeto_fanap/app/modules/login/login_module.dart';
import 'package:projeto_fanap/app/modules/splash/splash_controller.dart';
import 'package:projeto_fanap/app/modules/splash/splash_page.dart';

class SplashModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SplashController()),
      ];

  @override
  List<Router> get routers => [
        Router('/splash', child: (_, args) => SplashPage()),
        Router('/login', module: LoginModule()),
        Router('/home', module: HomeModule())
      ];

  static Inject get to => Inject<SplashModule>.of();
}
