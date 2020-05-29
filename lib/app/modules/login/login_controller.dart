import 'dart:convert';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:projeto_fanap/app/shared/models/login_authenticate_model.dart';
import 'package:projeto_fanap/app/shared/repositories/login_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:validators/validators.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  final FormLoginErrorState error = FormLoginErrorState();
  final LoginRepository repository;

  var loginModel = LoginAuthenticateModel();

  @observable
  String email = '';

  @observable
  String password = '';

  _LoginControllerBase(this.repository);

  @action
  void validateEmail(String value) {
    error.email = isEmail(value) ? null : 'E-mail inválido';
  }

  @action
  void validatePassword(String value) {
    error.password = isNull(value) || value.isEmpty ? 'Senha invalida' : null;
  }

  Future<LoginAuthenticateModel> authenticate() async {
    var model = LoginAuthenticateModel(
      email: email,
      password: password,
    );

    try {
      var prefs = await SharedPreferences.getInstance();
      var res = await repository.authenticate(model);
      loginModel = res;
      await prefs.setString('customer', jsonEncode(res));

      return res;
    } catch (e) {
      print(e);
      loginModel = null;
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

class FormLoginErrorState = _FormLoginErrorState with _$FormLoginErrorState;

abstract class _FormLoginErrorState with Store {
  @observable
  String email;

  @observable
  String password;

  @computed
  bool get hasErrors => email != null || password != null;
}
