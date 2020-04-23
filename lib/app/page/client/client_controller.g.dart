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

  final _$_ClientControllerBaseActionController =
      ActionController(name: '_ClientControllerBase');

  @override
  dynamic fetchData() {
    final _$actionInfo = _$_ClientControllerBaseActionController.startAction();
    try {
      return super.fetchData();
    } finally {
      _$_ClientControllerBaseActionController.endAction(_$actionInfo);
    }
  }
}
