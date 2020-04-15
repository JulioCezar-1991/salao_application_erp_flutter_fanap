import 'package:flutter/cupertino.dart';
import 'package:projectfanap/src/models/client-create.model.dart';
import 'package:projectfanap/src/models/client.model.dart';
import 'package:projectfanap/src/repositorie/client.repository.dart';

class ClientBloc extends ChangeNotifier {
  var client = ClientModel();

  ClientBloc() {
    client = null;
  }

  Future<ClientModel> clientCreate(ClientCreateModel model) async {
    try {
      var repository = ClientRepository();
      var res = await repository.postClient(model);
      return res;
    } catch (ex) {
      print(ex);
      client = null;
      return null;
    }
  }
}
