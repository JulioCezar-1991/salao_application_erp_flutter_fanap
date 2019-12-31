import 'package:dio/dio.dart';
import 'package:projectfanap/src/Setting.dart';
import 'package:projectfanap/src/model/user-authenticate.model.dart';
import 'package:projectfanap/src/model/user-create.model.dart';
import 'package:projectfanap/src/model/user.model.dart';


class AccountRepository{

  Future<UserModel> authenticate(UserAuthenticateModel model) async {
    var url = "${Settings.apiUrl}/account/login";
    Response response = await Dio().post(url, data: model);
    print(response.data);
    return UserModel.fromJson(response.data[0]);
  }

    Future<UserModel> userCreate(UserCreaterModel model) async {
    var url = "${Settings.apiUrl}/account/create";
    Response response = await Dio().post(url, data: model);
    return UserModel.fromJson(response.data[0]);
    
  }
}
