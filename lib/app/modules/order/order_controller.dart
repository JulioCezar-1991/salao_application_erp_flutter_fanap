import 'package:mobx/mobx.dart';
import 'package:projeto_fanap/app/shared/models/order_canceled_list_model.dart';
import 'package:projeto_fanap/app/shared/models/order_create_model.dart';
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
  String idUser = '';

  @action
  void validateIdUser(String value) {
    error.idUser = isNull(value) || value.isEmpty ? 'IdUser inválido' : null;
  }

  @observable
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
  String status = 'Status do Serviço';

  @action
  void validadeStatus(String value) {
    error.status =
        isNull(value) || value.isEmpty ? 'Status Invalida inválido' : null;
  }

  @observable
  double subtotal = 30.0;

  @observable
  var dataOrderModel = OrderCreateModel();

  Future<OrderModel> _postCreate() async {
    var model = OrderCreateModel(
      customer: idUser,
      client: idClient,
      schedulingdate: schedulingDate,
      status: status,
      subtotal: subtotal,
    );

    try {
      var res = await repository.postOrder(model);
      return res;
    } catch (ex) {
      dataOrderModel = null;
    }
    return null;
  }

  void validateCreateAll() async {
    validateIdUser(idUser);
    validateIdClient(idClient);
    validateDate(schedulingDate);
    validadeStatus(status);
    if (error.idUser == null &&
        error.idClient == null &&
        error.schedulingHour == null &&
        error.schedulingDate == null &&
        error.status == null) {
      return _postCreate().then((order) async {});
    }
  }
}

class FormOrderErrorState = _FormOrderErrorState with _$FormOrderErrorState;

abstract class _FormOrderErrorState with Store {
  @observable
  String idUser;

  @observable
  String idClient;

  @observable
  String schedulingHour;

  @observable
  String schedulingDate;

  @observable
  String status;

  @computed
  bool get hasErrors =>
      idUser != null ||
      idClient != null ||
      schedulingHour != null ||
      schedulingDate != null ||
      status != null;
}
