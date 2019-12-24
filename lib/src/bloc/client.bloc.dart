import 'package:projectfanap/src/model/client-create.model.dart';
import 'package:projectfanap/src/model/client.model.dart';
import 'package:projectfanap/src/repositorie/client.repository.dart';

class ClientBloc{

  Future<ClientModel> createClient(ClientCreateModel model) async {
    try {
      var repository = ClientRepository();
      var res = await repository.clientCreate(model);
      return res;
    } catch (ex) {
      print(ex);
      /* user = null; */
      return null;
    }
  }
}