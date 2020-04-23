import 'package:dio/dio.dart';

import 'package:projeto_fanap/app/shared/models/client-create.model.dart';
import 'package:projeto_fanap/app/shared/models/client-list.model.dart';

class ClientRepository {
  final Dio dio;

  ClientRepository(this.dio);

  Future<List<ClientListModel>> getAllClient() async {
    Response response = await dio.get("/client");
    return (response.data as List)
        .map((item) => ClientListModel.fromJson(item))
        .toList();
  }

  Future<ClientListModel> postClient(ClientCreateModel model) async {
    Response response = await dio.post('/client/create', data: model);
    return ClientListModel.fromJson(response.data[0]);
  }
}
