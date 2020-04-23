import 'package:mobx/mobx.dart';
import 'package:projeto_fanap/app/shared/models/client-list.model.dart';
import 'package:projeto_fanap/app/shared/repositories/client.repository.dart';

part 'client_controller.g.dart';

class ClientController = _ClientControllerBase with _$ClientController;

abstract class _ClientControllerBase with Store {
  final ClientRepository repository;

  @observable
  ObservableFuture<List<ClientListModel>> clients;

  @action
  fetchData() {
    clients = repository.getAllClient().asObservable();
  }

  _ClientControllerBase(this.repository) {
    fetchData();
  }
}
