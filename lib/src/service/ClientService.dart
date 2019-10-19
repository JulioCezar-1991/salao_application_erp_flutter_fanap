import 'package:dio/dio.dart';
import 'package:projectfanap/src/model/ClientURLModel.dart';


class ClientService {
  Dio dio = Dio();

  ClientURL url = ClientURL();

/*   Future<List<ContactPost>> getPosts() async {
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
  } */

  Future<int> isLoginPost(String login, String password) async {
    try {
      var response = await dio.post(
          "${url.getClientURL()}/post/usuario/?login=${login.toString()}&password=${password.toString()}");
      return response.data.length;
    } on DioError catch (e) {
      throw (e.message);
    }
  }

  Future<int> createUser(String empresa, String name, String login,
      String password, String tel, String email) async {
    try {
      var response = await dio.post(
          "${url.getClientURL()}/post/usuario/create/?empresa=${empresa.toString()}&name=${name.toString()}&login=${login.toString()}&password=${password.toString()}&telefone=${tel.toString()}&email=${email.toString()}");
      return response.statusCode;
    } on DioError catch (e) {
      throw (e.message);
    }
  }
}

/*   Future<ContactPost> getPost(int id) async {

    Response response = await dio.get("${url.getURL()}/posts/$id");

    if (response.statusCode == 200) {
      
      return ContactPost.fromJson(response.data);

    } else {
      Exception("Erro na requisição");
    } return null;
  } */
