import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_fanap/app/modules/order/order_page.dart';

class OrderModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => OrderPage()),
      ];
}
