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

  final _$idUserAtom = Atom(name: '_OrderControllerBase.idUser');

  @override
  String get idUser {
    _$idUserAtom.context.enforceReadPolicy(_$idUserAtom);
    _$idUserAtom.reportObserved();
    return super.idUser;
  }

  @override
  set idUser(String value) {
    _$idUserAtom.context.conditionallyRunInAction(() {
      super.idUser = value;
      _$idUserAtom.reportChanged();
    }, _$idUserAtom, name: '${_$idUserAtom.name}_set');
  }

  final _$idClientAtom = Atom(name: '_OrderControllerBase.idClient');

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

  final _$schedulingHourAtom =
      Atom(name: '_OrderControllerBase.schedulingHour');

  @override
  String get schedulingHour {
    _$schedulingHourAtom.context.enforceReadPolicy(_$schedulingHourAtom);
    _$schedulingHourAtom.reportObserved();
    return super.schedulingHour;
  }

  @override
  set schedulingHour(String value) {
    _$schedulingHourAtom.context.conditionallyRunInAction(() {
      super.schedulingHour = value;
      _$schedulingHourAtom.reportChanged();
    }, _$schedulingHourAtom, name: '${_$schedulingHourAtom.name}_set');
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

  final _$subtotalAtom = Atom(name: '_OrderControllerBase.subtotal');

  @override
  double get subtotal {
    _$subtotalAtom.context.enforceReadPolicy(_$subtotalAtom);
    _$subtotalAtom.reportObserved();
    return super.subtotal;
  }

  @override
  set subtotal(double value) {
    _$subtotalAtom.context.conditionallyRunInAction(() {
      super.subtotal = value;
      _$subtotalAtom.reportChanged();
    }, _$subtotalAtom, name: '${_$subtotalAtom.name}_set');
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
  void validateIdUser(String value) {
    final _$actionInfo = _$_OrderControllerBaseActionController.startAction();
    try {
      return super.validateIdUser(value);
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
  void validateHour(String value) {
    final _$actionInfo = _$_OrderControllerBaseActionController.startAction();
    try {
      return super.validateHour(value);
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
  void validadeStatus(String value) {
    final _$actionInfo = _$_OrderControllerBaseActionController.startAction();
    try {
      return super.validadeStatus(value);
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

  final _$idUserAtom = Atom(name: '_FormOrderErrorState.idUser');

  @override
  String get idUser {
    _$idUserAtom.context.enforceReadPolicy(_$idUserAtom);
    _$idUserAtom.reportObserved();
    return super.idUser;
  }

  @override
  set idUser(String value) {
    _$idUserAtom.context.conditionallyRunInAction(() {
      super.idUser = value;
      _$idUserAtom.reportChanged();
    }, _$idUserAtom, name: '${_$idUserAtom.name}_set');
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

  final _$schedulingHourAtom =
      Atom(name: '_FormOrderErrorState.schedulingHour');

  @override
  String get schedulingHour {
    _$schedulingHourAtom.context.enforceReadPolicy(_$schedulingHourAtom);
    _$schedulingHourAtom.reportObserved();
    return super.schedulingHour;
  }

  @override
  set schedulingHour(String value) {
    _$schedulingHourAtom.context.conditionallyRunInAction(() {
      super.schedulingHour = value;
      _$schedulingHourAtom.reportChanged();
    }, _$schedulingHourAtom, name: '${_$schedulingHourAtom.name}_set');
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
