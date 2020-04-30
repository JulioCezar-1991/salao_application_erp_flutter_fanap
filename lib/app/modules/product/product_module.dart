import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_fanap/app/modules/product/product_page.dart';
import 'package:projeto_fanap/app/modules/product/product_controller.dart';
import 'package:projeto_fanap/app/shared/repositories/product_repository.dart';
import 'package:projeto_fanap/app/shared/utils/setting_util.dart';

class ProductModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ProductController(i.get<ProductRepository>())),
        Bind((i) => ProductRepository(i.get<Dio>())),
        Bind((i) => Dio(BaseOptions(baseUrl: Settings.apiUrl))),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => ProductPage()),
        /* Router('/tooltip', child: (_, args) => ToolTipPage()), */
      ];

  static Inject get to => Inject<ProductModule>.of();
}