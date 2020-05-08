import 'package:mobx/mobx.dart';
import 'package:projeto_fanap/app/shared/models/order_canceled_list_model.dart';
import 'package:projeto_fanap/app/shared/models/order_done_list_model.dart';
import 'package:projeto_fanap/app/shared/models/order_open_list_model.dart';
import 'package:projeto_fanap/app/shared/repositories/order_repository.dart';

part 'order_controller.g.dart';

class OrderController = _OrderControllerBase with _$OrderController;

abstract class _OrderControllerBase with Store {
  final FormOrderErrorState error = FormOrderErrorState();
  final OrderRepository repository;

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
}

class FormOrderErrorState = _FormOrderErrorState with _$FormOrderErrorState;

abstract class _FormOrderErrorState with Store {
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
