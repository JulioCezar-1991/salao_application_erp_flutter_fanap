import 'package:dio/dio.dart';
import 'package:projeto_fanap/app/shared/models/user-authenticate.model.dart';
import 'package:projeto_fanap/app/shared/models/user-create.model.dart';

import 'package:projeto_fanap/app/shared/models/user.model.dart';
import 'package:projeto_fanap/app/shared/utils/setting.dart';

class AccountRepository {
  final Dio dio;

  AccountRepository(this.dio);

  UserModel userModel = UserModel();

  Future authenticate(AuthenticateModel model) async {
    var url = "${Settings.apiUrl}/customers/authenticate";
    Response response = await Dio().post(url, data: model);
    return UserModel.fromJson(response.data);
  }

  Future<UserModel> userCreate(UserCreaterModel model) async {
    Response response = await dio.post('/account/create', data: model);
    return UserModel.fromJson(response.data);
  }
}
