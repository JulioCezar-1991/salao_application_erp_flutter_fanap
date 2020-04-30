import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_fanap/app/modules/client/client_controller.dart';
import 'package:projeto_fanap/app/modules/client/client_module.dart';
import 'package:projeto_fanap/app/modules/home/home_controller.dart';
import 'package:projeto_fanap/app/modules/home/home_page.dart';
import 'package:projeto_fanap/app/modules/product/product_controller.dart';
import 'package:projeto_fanap/app/modules/product/product_module.dart';
import 'package:projeto_fanap/app/shared/repositories/client_repository.dart';
import 'package:projeto_fanap/app/shared/repositories/product_repository.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController()),
        Bind((i) => ClientController(i.get<ClientRepository>())),
        Bind((i) => ClientRepository(i.get<Dio>())),
        Bind((i) => ProductController(i.get<ProductRepository>())),
        Bind((i) => ProductRepository(i.get<Dio>())),
      ];

  @override
  List<Router> get routers => [
        Router('/home', child: (_, args) => HomePage()),
        Router('/client', module: ClientModule()),
        Router('/product', module: ProductModule()),
      ];
}
