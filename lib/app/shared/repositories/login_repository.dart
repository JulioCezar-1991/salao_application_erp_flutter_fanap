import 'package:dio/dio.dart';
import 'package:projeto_fanap/app/shared/models/login_authenticate_model.dart';
import 'package:projeto_fanap/app/shared/utils/setting_util.dart';

class LoginRepository {
  final Dio dio;

  LoginRepository(this.dio);

  Future authenticate(LoginAuthenticateModel model) async {
    var url = "${Settings.apiUrl}/customers/authenticate";
    Response response = await Dio().post(url, data: model);
    return LoginAuthenticateModel.fromJson(response.data);
  }
}
