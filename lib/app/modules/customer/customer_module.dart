import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:projeto_fanap/app/modules/customer/Customer_page.dart';
import 'package:projeto_fanap/app/modules/customer/customer_controller.dart';
import 'package:projeto_fanap/app/modules/home/home_module.dart';
import 'package:projeto_fanap/app/shared/repositories/customer_repository.dart';

class CustomerModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CustomerController(i.get<CustomerRepository>())),
        Bind((i) => CustomerRepository(i.get<Dio>())),
      ];

  @override
  List<Router> get routers => [
        Router('/Customer', child: (_, args) => CustomerPage()),
        Router('/home', module: HomeModule())
      ];
}
