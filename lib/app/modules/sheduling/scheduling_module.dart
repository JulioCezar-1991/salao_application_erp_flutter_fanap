import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_fanap/app/modules/sheduling/scheduling_page.dart';

class SchedulingModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => SchedulingPage()),
      ];
}
