import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_fanap/app/modules/product/product_page.dart';

class ProductModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => ProductPage()),
        /* Router('/tooltip', child: (_, args) => ToolTipPage()), */
      ];

  static Inject get to => Inject<ProductModule>.of();
}
