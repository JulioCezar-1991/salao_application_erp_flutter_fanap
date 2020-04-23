import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_fanap/app/page/client/client_page.dart';

class ClientModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => ClientPage()),
        /* Router('/tooltip', child: (_, args) => ToolTipPage()), */
      ];
}
