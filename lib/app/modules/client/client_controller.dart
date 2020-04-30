import 'package:cpf_cnpj_validator/cpf_validator.dart';
import 'package:mobx/mobx.dart';
import 'package:projeto_fanap/app/shared/models/client_create_model.dart';
import 'package:projeto_fanap/app/shared/models/client_list_model.dart';
import 'package:projeto_fanap/app/shared/models/client_model.dart';
import 'package:projeto_fanap/app/shared/repositories/client_repository.dart';
import 'package:validators/validators.dart';

part 'client_controller.g.dart';

class ClientController = _ClientControllerBase with _$ClientController;

abstract class _ClientControllerBase with Store {
  final FormClientErrorState error = FormClientErrorState();
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

  @observable
  String name = '';

  @action
  void validateName(String value) {
    error.name = isNull(value) || value.isEmpty ? 'Nome invalido' : null;
  }

  @observable
  String cpf = '';

  @action
  void validateCPF(String value) {
    error.cpf = CPFValidator.isValid(value) ? null : 'CPFs invalido';
  }

  // Metodos Data Nascimento
  @observable
  String date = '';

  @action
  void validateDate(String value) {
    error.date = isNull(value) || value.isEmpty ? 'Data invalida' : null;
  }

  @observable
  String email = '';

  @action
  void validateEmail(String value) {
    error.email = isEmail(value) ? null : 'Email invalido';
  }

  @observable
  String telcel = '';

  @action
  void validateTelCel(String value) {
    error.telcel = isNull(value) || value.isEmpty ? 'Telefone invalido' : null;
  }

  @observable
  String telfix = '';

  @action
  void validateTelFix(String value) {
    error.telfix = isNull(value) || value.isEmpty ? 'Telefone invalido' : null;
  }

  @observable
  String address = '';

  @action
  void validateAddress(String value) {
    error.address = isNull(value) || value.isEmpty ? 'Endereco invalido' : null;
  }

  @observable
  String sector = '';

  @action
  void validateSector(String value) {
    error.sector = isNull(value) || value.isEmpty ? 'Setor invalido' : null;
  }

  @observable
  String city = '';

  @action
  void validateCity(String value) {
    error.city = isNull(value) || value.isEmpty ? 'Cidade invalida' : null;
  }

  @observable
  String state = '';

  @action
  void validateState(String value) {
    error.state = isNull(value) || value.isEmpty ? 'Estado invalido' : null;
  }

  @observable
  var dataClientModel = ClientCreateModel();

  Future<ClientModel> _postCreate() async {
    var model = ClientCreateModel(
        name: name,
        cpf: cpf,
        date: date,
        telcel: telcel,
        telfix: telfix,
        email: email,
        address: address,
        sector: sector,
        city: city,
        state: state);
    try {
      var res = await repository.postClient(model);
      return res;
    } catch (ex) {
      print(ex);
      dataClientModel = null;
    }
    return null;
  }

  void validateAll() async {
    validateName(name);
    validateCPF(cpf);
    validateDate(date);
    validateEmail(email);
    validateTelCel(telcel);
    validateTelFix(telfix);
    validateAddress(address);
    validateSector(sector);
    validateCity(city);
    validateState(state);
    if (error.name == null &&
        error.cpf == null &&
        error.date == null &&
        error.email == null &&
        error.telcel == null &&
        error.telfix == null &&
        error.address == null &&
        error.sector == null &&
        error.city == null &&
        error.state == null) {
      _postCreate().then((client) async {
        if (client != null) {
          _postCreate();
        }
      });
    }
  }
}

class FormClientErrorState = _FormClientErrorState with _$FormClientErrorState;

abstract class _FormClientErrorState with Store {
  @observable
  String name;

  @observable
  String cpf;

  @observable
  String date;

  @observable
  String telcel;

  @observable
  String telfix;

  @observable
  String email;

  @observable
  String address;

  @observable
  String sector;

  @observable
  String city;

  @observable
  String state;

  @computed
  bool get hasErrors =>
      name != null ||
      cpf != null ||
      date != null ||
      telcel != null ||
      telfix != null ||
      email != null ||
      address != null ||
      sector != null ||
      city != null ||
      state != null;
}
