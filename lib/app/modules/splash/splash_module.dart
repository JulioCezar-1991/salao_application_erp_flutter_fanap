import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_fanap/app/modules/home/home_module.dart';
import 'package:projeto_fanap/app/modules/splash/splash_controller.dart';
import 'package:projeto_fanap/app/modules/splash/splash_page.dart';
import 'package:projeto_fanap/app/modules/user/user_module.dart';

class SplashModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SplashController()),
      ];

  @override
  List<Router> get routers => [
        Router('/splash', child: (_, args) => SplashPage()),
        Router('/user', module: UserModule()),
        Router('/home', module: HomeModule())
      ];

  static Inject get to => Inject<SplashModule>.of();
}
