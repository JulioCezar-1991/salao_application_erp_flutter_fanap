import 'package:dio/dio.dart';
import 'package:projectfanap/src/models/client-create.model.dart';
import 'package:projectfanap/src/models/client-list.model.dart';
import 'package:projectfanap/src/models/client.model.dart';

import '../setting.dart';

class ClientRepository {
  Future<List<ClientListModel>> getClient() async {
    var url = "${Settings.apiUrl}/client";
    Response response = await Dio().get(url);
    return (response.data as List)
        .map((item) => ClientListModel.fromJson(item))
        .toList();
  }

  Future<ClientModel> postClient(ClientCreateModel model) async {
    var url = "${Settings.apiUrl}/client/create";
    Response response = await Dio().post(url, data: model);
    return ClientModel.fromJson(response.data[0]);
  }
}
