import 'package:mobx/mobx.dart';
import 'package:projeto_fanap/app/shared/models/customer_create_model.dart';
import 'package:projeto_fanap/app/shared/models/customer_list_model.dart';
import 'package:projeto_fanap/app/shared/models/customer_model.dart';
import 'package:projeto_fanap/app/shared/repositories/customer_repository.dart';
import 'package:validators/validators.dart';

part 'customer_controller.g.dart';

class CustomerController = _CustomerControllerBase with _$CustomerController;

abstract class _CustomerControllerBase with Store {
  final FormCustomerErrorState error = FormCustomerErrorState();
  final CustomerRepository repository;

  List<String> listRoles = [
    'Administrador',
    'Usuário',
  ];

  @observable
  ObservableFuture<List<CustomerListModel>> customers;

  @action
  fetchCustomer() {
    customers = repository.getAllCustomer().asObservable();
  }

  _CustomerControllerBase(this.repository) {
    fetchCustomer();
  }

  @observable
  String name = '';

  @action
  void validateName(String value) {
    error.name = isNull(value) || value.isEmpty ? 'Nome inválido' : null;
  }

  @observable
  String email = '';

  @action
  void validateEmail(String value) {
    error.email = isEmail(value) ? null : 'Email inválido';
  }

  @observable
  String telcel = '';

  @action
  void validateTelCel(String value) {
    error.telcel = isNull(value) || value.isEmpty ? 'Telefone inválido' : null;
  }

  @observable
  String telfix = '';

  @action
  void validateTelFix(String value) {
    error.telfix = isNull(value) || value.isEmpty ? 'Telefone inválido' : null;
  }

  @observable
  String roles = '';

  @action
  void validateRoles(String value) {
    error.roles = isNull(value) || value.isEmpty ? 'Telefone inválido' : null;
  }

  /*var customer = CustomerModel();*/
  @observable
  String password = '';

  @action
  void validatePassword(String value) {
    error.password = isNull(value) || value.isEmpty ? 'Senha invalida' : null;
  }

  @observable
  var dataClientModel = CustomerCreaterModel();

  Future<CustomerModel> _postCreate() async {
    var model = CustomerCreaterModel(
      name: name,
      telcel: telcel,
      telfix: telfix,
      email: email,
    );
    try {
      var res = await repository.customerPost(model);
      return res;
    } catch (ex) {
      print(ex);
      dataClientModel = null;
    }
    return null;
  }

  void validateAll() async {
    validateName(name);
    validateTelCel(telcel);
    validateTelFix(telfix);
    validateEmail(email);
    validatePassword(password);
    if (error.name == null &&
        error.email == null &&
        error.telcel == null &&
        error.telfix == null &&
        error.password == null) {
      _postCreate().then((client) async {});
    }
  }
}

class FormCustomerErrorState = _FormcustomerErrorState
    with _$FormCustomerErrorState;

abstract class _FormcustomerErrorState with Store {
  @observable
  String name;

  @observable
  String telcel;

  @observable
  String telfix;

  @observable
  String email;

  @observable
  String password;

  @observable
  String roles;

  @computed
  bool get hasErrors =>
      name != null ||
      telcel != null ||
      telfix != null ||
      email != null ||
      password != null ||
      roles != null;
}
