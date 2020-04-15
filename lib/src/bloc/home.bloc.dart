import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:projectfanap/src/models/client-list.model.dart';
import 'package:projectfanap/src/models/servico-list.model.dart';
import 'package:projectfanap/src/repositorie/client.repository.dart';
import 'package:projectfanap/src/repositorie/servico.repository.dart';

class HomeBloc extends ChangeNotifier {
  final serviceRepository = ServicoRepository();
  final clientRepository = ClientRepository();

  List<ServicoListModel> servicos;
  List<ClientListModel> clients;

  HomeBloc() {
    getServicos();
    getClients();
  }

  getServicos() {
    serviceRepository.getServico().then((data) {
      this.servicos = data;
      notifyListeners();
    });
  }

  getClients() {
    clientRepository.getClient().then((data) {
      this.clients = data;
      notifyListeners();
    });
  }
}
