import 'package:dio/dio.dart';
import 'package:projectfanap/src/models/URLModel.dart';

class UserService {
  Dio dio = Dio();

  URLModel url = URLModel();

/*    Future<List<ContactPost>> getPosts() async {
    Response response = await dio
        .get("${url.getClientURL()}/api/vendedores/2/clientes/date/1470083200");

    if (response.statusCode == 200) {
      List<ContactPost> posts = (response.data as List)
          .map((item) => ContactPost.fromJson(item))
          .toList();

      return posts;
    } else {
      Exception("Erro na requisição");
    }
    return null;
  }  */

  Future<int> isLoginPost(String login, String password) async {
    
    try {
      var response = await dio.post(
          "${url.getConfingURL}/post/login/?login=${login.toString()}&password=${password.toString()}");
      return response.data.length;
    } on DioError catch (e) {
      throw (e.message);
    }
  }

  Future<int> createUser(String nomeCompleto, String telefone, String email, String login, String password) async {
    try {
      var response = await dio.post(
          "${url.getConfingURL}/post/usuario/create/?nomeCompleto=${nomeCompleto.toString()}&telefone=${telefone.toString()}&email=${email.toString()}&login=${login.toString()}&password=${password.toString()}&Permissao_codigo=${1}");
      return response.statusCode;
    } on DioError catch (e) {
      throw (e.message);
    }
  }
}

