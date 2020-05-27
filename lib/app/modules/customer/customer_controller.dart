import 'dart:convert';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:projeto_fanap/app/shared/models/customer_authenticate_model.dart';
import 'package:projeto_fanap/app/shared/models/customer_list_model.dart';
import 'package:projeto_fanap/app/shared/models/customer_model.dart';

import 'package:projeto_fanap/app/shared/repositories/customer_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:validators/validators.dart';

part 'customer_controller.g.dart';

class CustomerController = _CustomerControllerBase with _$CustomerController;

abstract class _CustomerControllerBase with Store {
  final FormCustomerErrorState error = FormCustomerErrorState();
  final CustomerRepository repository;

  @observable
  ObservableFuture<List<CustomerListModel>> customers;

  @action
  fetchCustomer() {
    customers = repository.getAllCustomer().asObservable();
  }

  _CustomerControllerBase(this.repository) {
    fetchCustomer();
  }

  var customer = CustomerModel();

  @observable
  String email = '';

  @observable
  String password = '';

  @action
  void validateEmail(String value) {
    error.email = isEmail(value) ? null : 'E-mail inválido';
  }

  @action
  void validatePassword(String value) {
    error.password = isNull(value) || value.isEmpty ? 'Senha invalida' : null;
  }

  Future<CustomerModel> authenticate() async {
    var model = AuthenticateModel(
      email: email,
      password: password,
    );

    try {
      var prefs = await SharedPreferences.getInstance();
      var res = await repository.authenticate(model);
      customer = res;
      await prefs.setString('customer', jsonEncode(res));

      return res;
    } catch (e) {
      print(e);
      customer = null;
      return null;
    }
  }

  void validateAll() async {
    validatePassword(password);
    validateEmail(email);
    if (error.password == null && error.email == null) {
      authenticate().then((customer) async {
        if (customer != null) {
          return Modular.to.pushReplacementNamed('/home');
        }
        return null;
      });
    }
  }
}

class FormCustomerErrorState = _FormcustomerErrorState
    with _$FormCustomerErrorState;

abstract class _FormcustomerErrorState with Store {
  @observable
  String email;

  @observable
  String password;

  @computed
  bool get hasErrors => email != null || password != null;
}
