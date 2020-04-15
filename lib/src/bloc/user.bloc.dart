import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:projectfanap/src/Setting.dart';
import 'package:projectfanap/src/models/user-authenticate.model.dart';
import 'package:projectfanap/src/models/user-create.model.dart';
import 'package:projectfanap/src/models/user.model.dart';
import 'package:projectfanap/src/repositorie/account.repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserBloc extends ChangeNotifier {
  var user = UserModel();

  UserBloc() {
    user = null;
    loadUser();
  }

  Future<UserModel> authenticate(UserAuthenticateModel model) async {
    try {
      var prefs = await SharedPreferences.getInstance();
      var repository = AccountRepository();

      var res = await repository.authenticate(model);

      user = res;
      await prefs.setString('user', jsonEncode(res));

      return res;
    } catch (e) {
      user = null;
      return null;
    }
  }

  Future<UserModel> userCreate(UserCreaterModel model) async {
    try {
      var repository = AccountRepository();
      var res = await repository.userCreate(model);
      return res;
    } catch (ex) {
      print(ex);
      user = null;
      return null;
    }
  }

  logout() async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setString('user', null);
    user = null;
    notifyListeners();
  }

  Future loadUser() async {
    var prefs = await SharedPreferences.getInstance();
    var userData = prefs.getString('user');
    if (userData != null) {
      var res = UserModel.fromJson(jsonDecode(userData));
      Settings.user = res;
      user = res;
    }
  }
}
