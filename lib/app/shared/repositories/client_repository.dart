import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:projeto_fanap/app/shared/models/client_create_model.dart';
import 'package:projeto_fanap/app/shared/models/client_list_model.dart';
import 'package:projeto_fanap/app/shared/models/client_model.dart';

class ClientRepository {
  final Dio dio;

  ClientRepository(this.dio);

  Future<List<ClientListModel>> getAllClient() async {
    Response response = await dio.get('/client');
    return (response.data as List)
        .map((item) => ClientListModel.fromJson(item))
        .toList();
  }

  Future<ClientModel> postClient(ClientCreateModel model) async {
    Response response = await dio.post('/client', data: model);
    return ClientModel.fromJson(response.data);
  }

  Future<ClientModel> deleteClient() async {
    Response response = await dio.delete('/client');
    return ClientModel.fromJson(response.data);
  }

  Future<ClientModel> patchClient(ClientCreateModel model) async {
    Response response = await dio.patch('/client', data: model);
    debugPrint("resposta: ${response.statusCode}");
    debugPrint("resposta: ${response.data}");
    return ClientModel.fromJson(response.data);
  }
}
