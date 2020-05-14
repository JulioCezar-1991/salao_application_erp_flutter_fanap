import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:projeto_fanap/app/shared/models/client_create_model.dart';
import 'package:projeto_fanap/app/shared/models/client_delete_model.dart';
import 'package:projeto_fanap/app/shared/models/client_list_model.dart';
import 'package:projeto_fanap/app/shared/models/client_model.dart';

class ClientRepository {
  final Dio dio;

  ClientRepository(this.dio);

  Future<List<ClientListModel>> getAllClient() async {
    Response response = await dio.get('/clients');
    return (response.data as List)
        .map((item) => ClientListModel.fromJson(item))
        .toList();
  }

  Future<ClientModel> postClient(ClientCreateModel model) async {
    Response response = await dio.post('/clients', data: model);
    debugPrint("resposta: ${response.data}");
    return ClientModel.fromJson(response.data);
  }

  Future<ClientModel> deleteClient(ClientDeleteModel model) async {
    Response response = await dio.delete('/clients', data: model);
    debugPrint("resposta: ${response.statusCode}");
    return ClientModel.fromJson(response.data);
  }

  Future<ClientModel> patchClient(ClientCreateModel model) async {
    Response response = await dio.patch('/clients', data: model);
    debugPrint("resposta: ${response.data}");
    return ClientModel.fromJson(response.data);
  }
}
