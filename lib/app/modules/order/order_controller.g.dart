// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$OrderController on _OrderControllerBase, Store {
  final _$ordersOpenAtom = Atom(name: '_OrderControllerBase.ordersOpen');

  @override
  ObservableFuture<List<OrderOpenListModel>> get ordersOpen {
    _$ordersOpenAtom.context.enforceReadPolicy(_$ordersOpenAtom);
    _$ordersOpenAtom.reportObserved();
    return super.ordersOpen;
  }

  @override
  set ordersOpen(ObservableFuture<List<OrderOpenListModel>> value) {
    _$ordersOpenAtom.context.conditionallyRunInAction(() {
      super.ordersOpen = value;
      _$ordersOpenAtom.reportChanged();
    }, _$ordersOpenAtom, name: '${_$ordersOpenAtom.name}_set');
  }

  final _$ordersDoneAtom = Atom(name: '_OrderControllerBase.ordersDone');

  @override
  ObservableFuture<List<OrderDoneListModel>> get ordersDone {
    _$ordersDoneAtom.context.enforceReadPolicy(_$ordersDoneAtom);
    _$ordersDoneAtom.reportObserved();
    return super.ordersDone;
  }

  @override
  set ordersDone(ObservableFuture<List<OrderDoneListModel>> value) {
    _$ordersDoneAtom.context.conditionallyRunInAction(() {
      super.ordersDone = value;
      _$ordersDoneAtom.reportChanged();
    }, _$ordersDoneAtom, name: '${_$ordersDoneAtom.name}_set');
  }

  final _$ordersCanceledAtom =
      Atom(name: '_OrderControllerBase.ordersCanceled');

  @override
  ObservableFuture<List<OrderCanceledListModel>> get ordersCanceled {
    _$ordersCanceledAtom.context.enforceReadPolicy(_$ordersCanceledAtom);
    _$ordersCanceledAtom.reportObserved();
    return super.ordersCanceled;
  }

  @override
  set ordersCanceled(ObservableFuture<List<OrderCanceledListModel>> value) {
    _$ordersCanceledAtom.context.conditionallyRunInAction(() {
      super.ordersCanceled = value;
      _$ordersCanceledAtom.reportChanged();
    }, _$ordersCanceledAtom, name: '${_$ordersCanceledAtom.name}_set');
  }

  final _$searchTextNameCustomerAtom =
      Atom(name: '_OrderControllerBase.searchTextNameCustomer');

  @override
  AutoCompleteTextField<dynamic> get searchTextNameCustomer {
    _$searchTextNameCustomerAtom.context
        .enforceReadPolicy(_$searchTextNameCustomerAtom);
    _$searchTextNameCustomerAtom.reportObserved();
    return super.searchTextNameCustomer;
  }

  @override
  set searchTextNameCustomer(AutoCompleteTextField<dynamic> value) {
    _$searchTextNameCustomerAtom.context.conditionallyRunInAction(() {
      super.searchTextNameCustomer = value;
      _$searchTextNameCustomerAtom.reportChanged();
    }, _$searchTextNameCustomerAtom,
        name: '${_$searchTextNameCustomerAtom.name}_set');
  }

  final _$searchTextNameClientAtom =
      Atom(name: '_OrderControllerBase.searchTextNameClient');

  @override
  AutoCompleteTextField<dynamic> get searchTextNameClient {
    _$searchTextNameClientAtom.context
        .enforceReadPolicy(_$searchTextNameClientAtom);
    _$searchTextNameClientAtom.reportObserved();
    return super.searchTextNameClient;
  }

  @override
  set searchTextNameClient(AutoCompleteTextField<dynamic> value) {
    _$searchTextNameClientAtom.context.conditionallyRunInAction(() {
      super.searchTextNameClient = value;
      _$searchTextNameClientAtom.reportChanged();
    }, _$searchTextNameClientAtom,
        name: '${_$searchTextNameClientAtom.name}_set');
  }

  final _$dataOrderModelAtom =
      Atom(name: '_OrderControllerBase.dataOrderModel');

  @override
  OrderCreateModel get dataOrderModel {
    _$dataOrderModelAtom.context.enforceReadPolicy(_$dataOrderModelAtom);
    _$dataOrderModelAtom.reportObserved();
    return super.dataOrderModel;
  }

  @override
  set dataOrderModel(OrderCreateModel value) {
    _$dataOrderModelAtom.context.conditionallyRunInAction(() {
      super.dataOrderModel = value;
      _$dataOrderModelAtom.reportChanged();
    }, _$dataOrderModelAtom, name: '${_$dataOrderModelAtom.name}_set');
  }

  final _$schedulingDateAtom =
      Atom(name: '_OrderControllerBase.schedulingDate');

  @override
  String get schedulingDate {
    _$schedulingDateAtom.context.enforceReadPolicy(_$schedulingDateAtom);
    _$schedulingDateAtom.reportObserved();
    return super.schedulingDate;
  }

  @override
  set schedulingDate(String value) {
    _$schedulingDateAtom.context.conditionallyRunInAction(() {
      super.schedulingDate = value;
      _$schedulingDateAtom.reportChanged();
    }, _$schedulingDateAtom, name: '${_$schedulingDateAtom.name}_set');
  }

  final _$paymentAtom = Atom(name: '_OrderControllerBase.payment');

  @override
  String get payment {
    _$paymentAtom.context.enforceReadPolicy(_$paymentAtom);
    _$paymentAtom.reportObserved();
    return super.payment;
  }

  @override
  set payment(String value) {
    _$paymentAtom.context.conditionallyRunInAction(() {
      super.payment = value;
      _$paymentAtom.reportChanged();
    }, _$paymentAtom, name: '${_$paymentAtom.name}_set');
  }

  final _$statusAtom = Atom(name: '_OrderControllerBase.status');

  @override
  String get status {
    _$statusAtom.context.enforceReadPolicy(_$statusAtom);
    _$statusAtom.reportObserved();
    return super.status;
  }

  @override
  set status(String value) {
    _$statusAtom.context.conditionallyRunInAction(() {
      super.status = value;
      _$statusAtom.reportChanged();
    }, _$statusAtom, name: '${_$statusAtom.name}_set');
  }

  final _$listProductAtom = Atom(name: '_OrderControllerBase.listProduct');

  @override
  List<Map<String, dynamic>> get listProduct {
    _$listProductAtom.context.enforceReadPolicy(_$listProductAtom);
    _$listProductAtom.reportObserved();
    return super.listProduct;
  }

  @override
  set listProduct(List<Map<String, dynamic>> value) {
    _$listProductAtom.context.conditionallyRunInAction(() {
      super.listProduct = value;
      _$listProductAtom.reportChanged();
    }, _$listProductAtom, name: '${_$listProductAtom.name}_set');
  }

  final _$productAtom = Atom(name: '_OrderControllerBase.product');

  @override
  Map<String, dynamic> get product {
    _$productAtom.context.enforceReadPolicy(_$productAtom);
    _$productAtom.reportObserved();
    return super.product;
  }

  @override
  set product(Map<String, dynamic> value) {
    _$productAtom.context.conditionallyRunInAction(() {
      super.product = value;
      _$productAtom.reportChanged();
    }, _$productAtom, name: '${_$productAtom.name}_set');
  }

  final _$cAtom = Atom(name: '_OrderControllerBase.c');

  @override
  String get c {
    _$cAtom.context.enforceReadPolicy(_$cAtom);
    _$cAtom.reportObserved();
    return super.c;
  }

  @override
  set c(String value) {
    _$cAtom.context.conditionallyRunInAction(() {
      super.c = value;
      _$cAtom.reportChanged();
    }, _$cAtom, name: '${_$cAtom.name}_set');
  }

  final _$subtotalAtom = Atom(name: '_OrderControllerBase.subtotal');

  @override
  String get subtotal {
    _$subtotalAtom.context.enforceReadPolicy(_$subtotalAtom);
    _$subtotalAtom.reportObserved();
    return super.subtotal;
  }

  @override
  set subtotal(String value) {
    _$subtotalAtom.context.conditionallyRunInAction(() {
      super.subtotal = value;
      _$subtotalAtom.reportChanged();
    }, _$subtotalAtom, name: '${_$subtotalAtom.name}_set');
  }

  final _$_OrderControllerBaseActionController =
      ActionController(name: '_OrderControllerBase');

  @override
  dynamic fetchOrderOpen() {
    final _$actionInfo = _$_OrderControllerBaseActionController.startAction();
    try {
      return super.fetchOrderOpen();
    } finally {
      _$_OrderControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic fetchOrderDone() {
    final _$actionInfo = _$_OrderControllerBaseActionController.startAction();
    try {
      return super.fetchOrderDone();
    } finally {
      _$_OrderControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic fetchOrderCanceled() {
    final _$actionInfo = _$_OrderControllerBaseActionController.startAction();
    try {
      return super.fetchOrderCanceled();
    } finally {
      _$_OrderControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateIdCustomer(String value) {
    final _$actionInfo = _$_OrderControllerBaseActionController.startAction();
    try {
      return super.validateIdCustomer(value);
    } finally {
      _$_OrderControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateIdClient(String value) {
    final _$actionInfo = _$_OrderControllerBaseActionController.startAction();
    try {
      return super.validateIdClient(value);
    } finally {
      _$_OrderControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateDate(String value) {
    final _$actionInfo = _$_OrderControllerBaseActionController.startAction();
    try {
      return super.validateDate(value);
    } finally {
      _$_OrderControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validatePayment(String value) {
    final _$actionInfo = _$_OrderControllerBaseActionController.startAction();
    try {
      return super.validatePayment(value);
    } finally {
      _$_OrderControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateStatus(String value) {
    final _$actionInfo = _$_OrderControllerBaseActionController.startAction();
    try {
      return super.validateStatus(value);
    } finally {
      _$_OrderControllerBaseActionController.endAction(_$actionInfo);
    }
  }
}

mixin _$FormOrderErrorState on _FormOrderErrorState, Store {
  Computed<bool> _$hasErrorsComputed;

  @override
  bool get hasErrors =>
      (_$hasErrorsComputed ??= Computed<bool>(() => super.hasErrors)).value;

  final _$idCustomerAtom = Atom(name: '_FormOrderErrorState.idCustomer');

  @override
  String get idCustomer {
    _$idCustomerAtom.context.enforceReadPolicy(_$idCustomerAtom);
    _$idCustomerAtom.reportObserved();
    return super.idCustomer;
  }

  @override
  set idCustomer(String value) {
    _$idCustomerAtom.context.conditionallyRunInAction(() {
      super.idCustomer = value;
      _$idCustomerAtom.reportChanged();
    }, _$idCustomerAtom, name: '${_$idCustomerAtom.name}_set');
  }

  final _$idClientAtom = Atom(name: '_FormOrderErrorState.idClient');

  @override
  String get idClient {
    _$idClientAtom.context.enforceReadPolicy(_$idClientAtom);
    _$idClientAtom.reportObserved();
    return super.idClient;
  }

  @override
  set idClient(String value) {
    _$idClientAtom.context.conditionallyRunInAction(() {
      super.idClient = value;
      _$idClientAtom.reportChanged();
    }, _$idClientAtom, name: '${_$idClientAtom.name}_set');
  }

  final _$schedulingDateAtom =
      Atom(name: '_FormOrderErrorState.schedulingDate');

  @override
  String get schedulingDate {
    _$schedulingDateAtom.context.enforceReadPolicy(_$schedulingDateAtom);
    _$schedulingDateAtom.reportObserved();
    return super.schedulingDate;
  }

  @override
  set schedulingDate(String value) {
    _$schedulingDateAtom.context.conditionallyRunInAction(() {
      super.schedulingDate = value;
      _$schedulingDateAtom.reportChanged();
    }, _$schedulingDateAtom, name: '${_$schedulingDateAtom.name}_set');
  }

  final _$paymentAtom = Atom(name: '_FormOrderErrorState.payment');

  @override
  String get payment {
    _$paymentAtom.context.enforceReadPolicy(_$paymentAtom);
    _$paymentAtom.reportObserved();
    return super.payment;
  }

  @override
  set payment(String value) {
    _$paymentAtom.context.conditionallyRunInAction(() {
      super.payment = value;
      _$paymentAtom.reportChanged();
    }, _$paymentAtom, name: '${_$paymentAtom.name}_set');
  }

  final _$statusAtom = Atom(name: '_FormOrderErrorState.status');

  @override
  String get status {
    _$statusAtom.context.enforceReadPolicy(_$statusAtom);
    _$statusAtom.reportObserved();
    return super.status;
  }

  @override
  set status(String value) {
    _$statusAtom.context.conditionallyRunInAction(() {
      super.status = value;
      _$statusAtom.reportChanged();
    }, _$statusAtom, name: '${_$statusAtom.name}_set');
  }
}
