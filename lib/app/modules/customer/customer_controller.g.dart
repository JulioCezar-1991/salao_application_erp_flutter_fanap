// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CustomerController on _CustomerControllerBase, Store {
  final _$customersAtom = Atom(name: '_CustomerControllerBase.customers');

  @override
  ObservableFuture<List<CustomerListModel>> get customers {
    _$customersAtom.context.enforceReadPolicy(_$customersAtom);
    _$customersAtom.reportObserved();
    return super.customers;
  }

  @override
  set customers(ObservableFuture<List<CustomerListModel>> value) {
    _$customersAtom.context.conditionallyRunInAction(() {
      super.customers = value;
      _$customersAtom.reportChanged();
    }, _$customersAtom, name: '${_$customersAtom.name}_set');
  }

  final _$emailAtom = Atom(name: '_CustomerControllerBase.email');

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

  final _$passwordAtom = Atom(name: '_CustomerControllerBase.password');

  @override
  String get password {
    _$passwordAtom.context.enforceReadPolicy(_$passwordAtom);
    _$passwordAtom.reportObserved();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.context.conditionallyRunInAction(() {
      super.password = value;
      _$passwordAtom.reportChanged();
    }, _$passwordAtom, name: '${_$passwordAtom.name}_set');
  }

  final _$_CustomerControllerBaseActionController =
      ActionController(name: '_CustomerControllerBase');

  @override
  dynamic fetchCustomer() {
    final _$actionInfo =
        _$_CustomerControllerBaseActionController.startAction();
    try {
      return super.fetchCustomer();
    } finally {
      _$_CustomerControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateEmail(String value) {
    final _$actionInfo =
        _$_CustomerControllerBaseActionController.startAction();
    try {
      return super.validateEmail(value);
    } finally {
      _$_CustomerControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validatePassword(String value) {
    final _$actionInfo =
        _$_CustomerControllerBaseActionController.startAction();
    try {
      return super.validatePassword(value);
    } finally {
      _$_CustomerControllerBaseActionController.endAction(_$actionInfo);
    }
  }
}

mixin _$FormCustomerErrorState on _FormcustomerErrorState, Store {
  Computed<bool> _$hasErrorsComputed;

  @override
  bool get hasErrors =>
      (_$hasErrorsComputed ??= Computed<bool>(() => super.hasErrors)).value;

  final _$emailAtom = Atom(name: '_FormcustomerErrorState.email');

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

  final _$passwordAtom = Atom(name: '_FormcustomerErrorState.password');

  @override
  String get password {
    _$passwordAtom.context.enforceReadPolicy(_$passwordAtom);
    _$passwordAtom.reportObserved();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.context.conditionallyRunInAction(() {
      super.password = value;
      _$passwordAtom.reportChanged();
    }, _$passwordAtom, name: '${_$passwordAtom.name}_set');
  }
}
