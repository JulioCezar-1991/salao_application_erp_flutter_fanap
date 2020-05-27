import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:mobx/mobx.dart';
import 'package:projeto_fanap/app/shared/models/order_canceled_list_model.dart';
import 'package:projeto_fanap/app/shared/models/order_create_model.dart';
import 'package:projeto_fanap/app/shared/models/order_delete_model.dart';
import 'package:projeto_fanap/app/shared/models/order_done_list_model.dart';
import 'package:projeto_fanap/app/shared/models/order_model.dart';
import 'package:projeto_fanap/app/shared/models/order_open_list_model.dart';
import 'package:projeto_fanap/app/shared/repositories/order_repository.dart';
import 'package:validators/validators.dart';

part 'order_controller.g.dart';

class OrderController = _OrderControllerBase with _$OrderController;

abstract class _OrderControllerBase with Store {
  final FormOrderErrorState error = FormOrderErrorState();
  final OrderRepository repository;

  List<String> listStatus = [
    'Status do Serviço',
    'Aberto',
    'Fechado',
    'Cancelado',
  ];

  List<String> listFormPayment = [
    'Forma de Pagamento',
    'Dinheiro',
    'Cartão de Credito',
    'Cartão de Debito',
    'Carteira'
  ];

  @observable
  ObservableFuture<List<OrderOpenListModel>> ordersOpen;

  @action
  fetchOrderOpen() {
    ordersOpen = repository.getOrderOpen().asObservable();
  }

  @observable
  ObservableFuture<List<OrderDoneListModel>> ordersDone;

  @action
  fetchOrderDone() {
    ordersDone = repository.getOrderDone().asObservable();
  }

  @observable
  ObservableFuture<List<OrderCanceledListModel>> ordersCanceled;

  @action
  fetchOrderCanceled() {
    ordersCanceled = repository.getOrderCanceled().asObservable();
  }

  _OrderControllerBase(this.repository) {
    fetchOrderOpen();
    fetchOrderDone();
    fetchOrderCanceled();
  }

  @observable
  AutoCompleteTextField searchTextNameCustomer;

  @observable
  AutoCompleteTextField searchTextNameClient;

  @observable
  var dataOrderModel = OrderCreateModel();

  String idCustomer = '';

  @action
  void validateIdCustomer(String value) {
    error.idCustomer =
        isNull(value) || value.isEmpty ? 'IdUser inválido' : null;
  }

  String idClient = '';

  @action
  void validateIdClient(String value) {
    error.idClient =
        isNull(value) || value.isEmpty ? 'IdClient inválido' : null;
  }

  @observable
  String schedulingDate = '';

  @action
  void validateDate(String value) {
    error.schedulingDate =
        isNull(value) || value.isEmpty ? 'Data Invalida inválido' : null;
  }

  @observable
  String payment = 'Forma de Pagamento';

  @action
  void validatePayment(String value) {
    error.payment =
        isNull(value) || value.isEmpty ? 'Forma de Pagamento Inválido' : null;
  }

  @observable
  String status = 'Status do Serviço';

  @action
  void validateStatus(String value) {
    error.status = isNull(value) || value.isEmpty ? 'Status Inválido' : null;
  }

  var listProduct = List<ProductList>();

  var product = ProductList();

  @observable
  String c = '';

  @observable
  String subtotal = '';

  String changeSubtotal() {
    double subTotal = 0;
    for (var i = 0; i < listProduct.length; i++) {
      subTotal += listProduct[i].price;
    }
    return subtotal = subTotal.toString();
  }

  Future<OrderModel> _postCreate() async {
    var model = OrderCreateModel(
        customer: idCustomer,
        client: idClient,
        schedulingdate: schedulingDate,
        status: status,
        /* itens: listProduct, */
        formPayment: payment,
        subtotal: double.parse(subtotal));

    try {
      var res = await repository.postOrder(model);
      return res;
    } catch (ex) {
      dataOrderModel = null;
    }
    return null;
  }

  void patchOrder(String id) async {
    _patchOrder(dataOrderModel, id);
  }

  Future<OrderModel> _patchOrder(OrderCreateModel model, id) async {
    var model = OrderCreateModel(
      id: id,
      customer: idCustomer,
      client: idClient,
      schedulingdate: schedulingDate,
      formPayment: payment,
      status: status,
    );
    try {
      var res = await repository.patchOrder(model);
      return res;
    } catch (error) {
      dataOrderModel = null;
    }
    return null;
  }

  void deleteOrder(String id) async {
    _deleteOrder(id);
  }

  Future<OrderModel> _deleteOrder(String id) async {
    var model = OrderDeleteModel(id: id);
    try {
      var res = await repository.deleteOrder(model);
      return res;
    } catch (error) {
      dataOrderModel = null;
    }
    return null;
  }

  void validateCreateAll() async {
    validateIdCustomer(idCustomer);
    validateIdClient(idClient);
    validateDate(schedulingDate);
    validateStatus(status);
    validatePayment(payment);

    if (error.idCustomer == null &&
        error.idClient == null &&
        error.schedulingDate == null &&
        error.status == null &&
        error.payment == null) {
      return _postCreate().then((order) async {});
    }
  }
}

class FormOrderErrorState = _FormOrderErrorState with _$FormOrderErrorState;

abstract class _FormOrderErrorState with Store {
  @observable
  String idCustomer;

  @observable
  String idClient;

  @observable
  String schedulingDate;

  @observable
  String payment;

  @observable
  String status;

  @computed
  bool get hasErrors =>
      idCustomer != null ||
      idClient != null ||
      schedulingDate != null ||
      payment != null ||
      status != null;
}
