import 'package:dio/dio.dart';
import 'package:projectfanap/src/Setting.dart';
import 'package:projectfanap/src/models/AuthenticateModel.dart';
import 'package:projectfanap/src/models/CreateUserModel.dart';
import 'package:projectfanap/src/models/UserModel.dart';

class AccountRepository{

  Future<UserModel> authenticate(AuthenticateModel model) async {
    var url = "${Settings.apiUrl}account/login";
    Response response = await Dio().post(url, data: model);
    print(response.data);
    return UserModel.fromJson(response.data[0]);
  }

    Future<UserModel> create(CreateUserModel model) async {
    var url = "${Settings.apiUrl}v1/account";
    Response response = await Dio().post(url, data: model);
    return UserModel.fromJson(response.data);
  }
}
