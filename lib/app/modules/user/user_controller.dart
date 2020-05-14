import 'dart:convert';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:projeto_fanap/app/shared/models/user_authenticate_model.dart';
import 'package:projeto_fanap/app/shared/models/user_model.dart';
import 'package:projeto_fanap/app/shared/repositories/user_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:validators/validators.dart';

part 'user_controller.g.dart';

class UserController = _UserControllerBase with _$UserController;

abstract class _UserControllerBase with Store {
  final FormUserErrorState error = FormUserErrorState();
  final UserRepository repository;

  _UserControllerBase(this.repository) {
    user = null;
  }
  var user = UserModel();

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

class FormUserErrorState = _FormUserErrorState with _$FormUserErrorState;

abstract class _FormUserErrorState with Store {
  @observable
  String email;

  @observable
  String password;

  @computed
  bool get hasErrors => email != null || password != null;
}
