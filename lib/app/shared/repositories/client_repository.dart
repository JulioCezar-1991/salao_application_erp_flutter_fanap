import 'package:dio/dio.dart';
import 'package:projeto_fanap/app/shared/models/client_create_model.dart';
import 'package:projeto_fanap/app/shared/models/client_list_model.dart';
import 'package:projeto_fanap/app/shared/models/client_model.dart';

class ClientRepository {
  final Dio dio;

  ClientRepository(this.dio);

  Future<List<ClientListModel>> getAllClient() async {
    Response response = await dio.get("/client");
    return (response.data as List)
        .map((item) => ClientListModel.fromJson(item))
        .toList();
  }

  Future<ClientModel> postClient(ClientCreateModel model) async {
    Response response = await dio.post('/client', data: model);
    return ClientModel.fromJson(response.data);
  }
}
