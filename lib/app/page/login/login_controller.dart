import 'dart:convert';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:projeto_fanap/app/shared/models/user-authenticate.model.dart';
import 'package:projeto_fanap/app/shared/models/user.model.dart';
import 'package:projeto_fanap/app/shared/repositories/account.repository.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:validators/validators.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  final FormErrorState error = FormErrorState();

  final AccountRepository repository;
  var user = UserModel();
  _LoginControllerBase(this.repository) {
    user = null;
  }

  @observable
  String email = '';

  @observable
  String password = '';

  @action
  void validateEmail(String value) {
    error.email = isEmail(value) ? null : 'E-mail invalido';
  }

  @action
  void validatePassword(String value) {
    error.password = isNull(value) || value.isEmpty ? 'Senha invalida' : null;
  }

  Future<UserModel> authenticate() async {
    var model = AuthenticateModel(
      email: email,
      password: password,
    );

    try {
      var prefs = await SharedPreferences.getInstance();
      var res = await repository.authenticate(model);
      user = res;
      await prefs.setString('user', jsonEncode(res));

      return res;
    } catch (e) {
      print(e);
      user = null;
      return null;
    }
  }

  void validateAll() async {
    validatePassword(password);
    validateEmail(email);
    if (error.password == null && error.email == null) {
      authenticate().then((user) async {
        if (user != null) {
          return Modular.to.pushReplacementNamed('/home');
        }
        return null;
      });
    }
  }
}

class FormErrorState = _FormErrorState with _$FormErrorState;

abstract class _FormErrorState with Store {
  @observable
  String email;

  @observable
  String password;

  @computed
  bool get hasErrors => email != null || password != null;
}
