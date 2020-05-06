// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ClientController on _ClientControllerBase, Store {
  final _$clientsAtom = Atom(name: '_ClientControllerBase.clients');

  @override
  ObservableFuture<List<ClientListModel>> get clients {
    _$clientsAtom.context.enforceReadPolicy(_$clientsAtom);
    _$clientsAtom.reportObserved();
    return super.clients;
  }

  @override
  set clients(ObservableFuture<List<ClientListModel>> value) {
    _$clientsAtom.context.conditionallyRunInAction(() {
      super.clients = value;
      _$clientsAtom.reportChanged();
    }, _$clientsAtom, name: '${_$clientsAtom.name}_set');
  }

  final _$nameAtom = Atom(name: '_ClientControllerBase.name');

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

  final _$cpfAtom = Atom(name: '_ClientControllerBase.cpf');

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

  final _$dateAtom = Atom(name: '_ClientControllerBase.date');

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

  final _$emailAtom = Atom(name: '_ClientControllerBase.email');

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

  final _$telcelAtom = Atom(name: '_ClientControllerBase.telcel');

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

  final _$telfixAtom = Atom(name: '_ClientControllerBase.telfix');

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

  final _$addressAtom = Atom(name: '_ClientControllerBase.address');

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

  final _$sectorAtom = Atom(name: '_ClientControllerBase.sector');

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

  final _$cityAtom = Atom(name: '_ClientControllerBase.city');

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

  final _$stateAtom = Atom(name: '_ClientControllerBase.state');

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

  final _$dataClientModelAtom =
      Atom(name: '_ClientControllerBase.dataClientModel');

  @override
  ClientCreateModel get dataClientModel {
    _$dataClientModelAtom.context.enforceReadPolicy(_$dataClientModelAtom);
    _$dataClientModelAtom.reportObserved();
    return super.dataClientModel;
  }

  @override
  set dataClientModel(ClientCreateModel value) {
    _$dataClientModelAtom.context.conditionallyRunInAction(() {
      super.dataClientModel = value;
      _$dataClientModelAtom.reportChanged();
    }, _$dataClientModelAtom, name: '${_$dataClientModelAtom.name}_set');
  }

  final _$_ClientControllerBaseActionController =
      ActionController(name: '_ClientControllerBase');

  @override
  dynamic fetchClient() {
    final _$actionInfo = _$_ClientControllerBaseActionController.startAction();
    try {
      return super.fetchClient();
    } finally {
      _$_ClientControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setName(String name) {
    final _$actionInfo = _$_ClientControllerBaseActionController.startAction();
    try {
      return super.setName(name);
    } finally {
      _$_ClientControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateName(String value) {
    final _$actionInfo = _$_ClientControllerBaseActionController.startAction();
    try {
      return super.validateName(value);
    } finally {
      _$_ClientControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateCPF(String value) {
    final _$actionInfo = _$_ClientControllerBaseActionController.startAction();
    try {
      return super.validateCPF(value);
    } finally {
      _$_ClientControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateDate(String value) {
    final _$actionInfo = _$_ClientControllerBaseActionController.startAction();
    try {
      return super.validateDate(value);
    } finally {
      _$_ClientControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateEmail(String value) {
    final _$actionInfo = _$_ClientControllerBaseActionController.startAction();
    try {
      return super.validateEmail(value);
    } finally {
      _$_ClientControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateTelCel(String value) {
    final _$actionInfo = _$_ClientControllerBaseActionController.startAction();
    try {
      return super.validateTelCel(value);
    } finally {
      _$_ClientControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateTelFix(String value) {
    final _$actionInfo = _$_ClientControllerBaseActionController.startAction();
    try {
      return super.validateTelFix(value);
    } finally {
      _$_ClientControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateAddress(String value) {
    final _$actionInfo = _$_ClientControllerBaseActionController.startAction();
    try {
      return super.validateAddress(value);
    } finally {
      _$_ClientControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateSector(String value) {
    final _$actionInfo = _$_ClientControllerBaseActionController.startAction();
    try {
      return super.validateSector(value);
    } finally {
      _$_ClientControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateCity(String value) {
    final _$actionInfo = _$_ClientControllerBaseActionController.startAction();
    try {
      return super.validateCity(value);
    } finally {
      _$_ClientControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateState(String value) {
    final _$actionInfo = _$_ClientControllerBaseActionController.startAction();
    try {
      return super.validateState(value);
    } finally {
      _$_ClientControllerBaseActionController.endAction(_$actionInfo);
    }
  }
}

mixin _$FormClientErrorState on _FormClientErrorState, Store {
  Computed<bool> _$hasErrorsComputed;

  @override
  bool get hasErrors =>
      (_$hasErrorsComputed ??= Computed<bool>(() => super.hasErrors)).value;

  final _$nameAtom = Atom(name: '_FormClientErrorState.name');

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

  final _$cpfAtom = Atom(name: '_FormClientErrorState.cpf');

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

  final _$dateAtom = Atom(name: '_FormClientErrorState.date');

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

  final _$telcelAtom = Atom(name: '_FormClientErrorState.telcel');

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

  final _$telfixAtom = Atom(name: '_FormClientErrorState.telfix');

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

  final _$emailAtom = Atom(name: '_FormClientErrorState.email');

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

  final _$addressAtom = Atom(name: '_FormClientErrorState.address');

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

  final _$sectorAtom = Atom(name: '_FormClientErrorState.sector');

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

  final _$cityAtom = Atom(name: '_FormClientErrorState.city');

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

  final _$stateAtom = Atom(name: '_FormClientErrorState.state');

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
