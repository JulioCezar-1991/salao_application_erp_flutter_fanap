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
}

mixin _$FormOrderErrorState on _FormOrderErrorState, Store {
  Computed<bool> _$hasErrorsComputed;

  @override
  bool get hasErrors =>
      (_$hasErrorsComputed ??= Computed<bool>(() => super.hasErrors)).value;

  final _$nameAtom = Atom(name: '_FormOrderErrorState.name');

  @override
  String get name {
    _$nameAtom.context.enforceReadPolicy(_$nameAtom);
    _$nameAtom.reportObserved();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.context.conditionallyRunInAction(() {
      super.name = value;
      _$nameAtom.reportChanged();
    }, _$nameAtom, name: '${_$nameAtom.name}_set');
  }

  final _$cpfAtom = Atom(name: '_FormOrderErrorState.cpf');

  @override
  String get cpf {
    _$cpfAtom.context.enforceReadPolicy(_$cpfAtom);
    _$cpfAtom.reportObserved();
    return super.cpf;
  }

  @override
  set cpf(String value) {
    _$cpfAtom.context.conditionallyRunInAction(() {
      super.cpf = value;
      _$cpfAtom.reportChanged();
    }, _$cpfAtom, name: '${_$cpfAtom.name}_set');
  }

  final _$dateAtom = Atom(name: '_FormOrderErrorState.date');

  @override
  String get date {
    _$dateAtom.context.enforceReadPolicy(_$dateAtom);
    _$dateAtom.reportObserved();
    return super.date;
  }

  @override
  set date(String value) {
    _$dateAtom.context.conditionallyRunInAction(() {
      super.date = value;
      _$dateAtom.reportChanged();
    }, _$dateAtom, name: '${_$dateAtom.name}_set');
  }

  final _$telcelAtom = Atom(name: '_FormOrderErrorState.telcel');

  @override
  String get telcel {
    _$telcelAtom.context.enforceReadPolicy(_$telcelAtom);
    _$telcelAtom.reportObserved();
    return super.telcel;
  }

  @override
  set telcel(String value) {
    _$telcelAtom.context.conditionallyRunInAction(() {
      super.telcel = value;
      _$telcelAtom.reportChanged();
    }, _$telcelAtom, name: '${_$telcelAtom.name}_set');
  }

  final _$telfixAtom = Atom(name: '_FormOrderErrorState.telfix');

  @override
  String get telfix {
    _$telfixAtom.context.enforceReadPolicy(_$telfixAtom);
    _$telfixAtom.reportObserved();
    return super.telfix;
  }

  @override
  set telfix(String value) {
    _$telfixAtom.context.conditionallyRunInAction(() {
      super.telfix = value;
      _$telfixAtom.reportChanged();
    }, _$telfixAtom, name: '${_$telfixAtom.name}_set');
  }

  final _$emailAtom = Atom(name: '_FormOrderErrorState.email');

  @override
  String get email {
    _$emailAtom.context.enforceReadPolicy(_$emailAtom);
    _$emailAtom.reportObserved();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.context.conditionallyRunInAction(() {
      super.email = value;
      _$emailAtom.reportChanged();
    }, _$emailAtom, name: '${_$emailAtom.name}_set');
  }

  final _$addressAtom = Atom(name: '_FormOrderErrorState.address');

  @override
  String get address {
    _$addressAtom.context.enforceReadPolicy(_$addressAtom);
    _$addressAtom.reportObserved();
    return super.address;
  }

  @override
  set address(String value) {
    _$addressAtom.context.conditionallyRunInAction(() {
      super.address = value;
      _$addressAtom.reportChanged();
    }, _$addressAtom, name: '${_$addressAtom.name}_set');
  }

  final _$sectorAtom = Atom(name: '_FormOrderErrorState.sector');

  @override
  String get sector {
    _$sectorAtom.context.enforceReadPolicy(_$sectorAtom);
    _$sectorAtom.reportObserved();
    return super.sector;
  }

  @override
  set sector(String value) {
    _$sectorAtom.context.conditionallyRunInAction(() {
      super.sector = value;
      _$sectorAtom.reportChanged();
    }, _$sectorAtom, name: '${_$sectorAtom.name}_set');
  }

  final _$cityAtom = Atom(name: '_FormOrderErrorState.city');

  @override
  String get city {
    _$cityAtom.context.enforceReadPolicy(_$cityAtom);
    _$cityAtom.reportObserved();
    return super.city;
  }

  @override
  set city(String value) {
    _$cityAtom.context.conditionallyRunInAction(() {
      super.city = value;
      _$cityAtom.reportChanged();
    }, _$cityAtom, name: '${_$cityAtom.name}_set');
  }

  final _$stateAtom = Atom(name: '_FormOrderErrorState.state');

  @override
  String get state {
    _$stateAtom.context.enforceReadPolicy(_$stateAtom);
    _$stateAtom.reportObserved();
    return super.state;
  }

  @override
  set state(String value) {
    _$stateAtom.context.conditionallyRunInAction(() {
      super.state = value;
      _$stateAtom.reportChanged();
    }, _$stateAtom, name: '${_$stateAtom.name}_set');
  }
}
