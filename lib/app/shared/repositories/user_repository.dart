import 'package:dio/dio.dart';
import 'package:projeto_fanap/app/shared/models/user_authenticate_model.dart';
import 'package:projeto_fanap/app/shared/models/user_create_model.dart';
import 'package:projeto_fanap/app/shared/models/user_list_model.dart';
import 'package:projeto_fanap/app/shared/models/user_model.dart';
import 'package:projeto_fanap/app/shared/utils/setting_util.dart';

class UserRepository {
  final Dio dio;

  UserRepository(this.dio);

  UserModel userModel = UserModel();

  Future<List<UserListModel>> getAllUser() async {
    Response response = await dio.get('/customers');
    return (response.data as List)
        .map((item) => UserListModel.fromJson(item))
        .toList();
  }

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
