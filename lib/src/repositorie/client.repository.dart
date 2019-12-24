import 'package:dio/dio.dart';
import 'package:projectfanap/src/Setting.dart';
import 'package:projectfanap/src/model/client-create.model.dart';
import 'package:projectfanap/src/model/client.model.dart';

class ClientRepository{

  Future<ClientModel> clientCreate(ClientCreateModel model) async {
    var url = "${Settings.apiUrl}/account/create";
    Response response = await Dio().post(url, data: model);
   /*  return ClientModel.fromJson(response.data[0]); */
  }

}