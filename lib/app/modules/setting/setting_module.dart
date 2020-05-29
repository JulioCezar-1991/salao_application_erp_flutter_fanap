import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_fanap/app/modules/home/home_module.dart';
import 'package:projeto_fanap/app/modules/setting/setting_page.dart';

class SettingModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<Router> get routers => [
        Router('/setting', child: (_, args) => SettingPage()),
        Router('/home', module: HomeModule())
      ];

  static Inject get to => Inject<SettingModule>.of();
}
