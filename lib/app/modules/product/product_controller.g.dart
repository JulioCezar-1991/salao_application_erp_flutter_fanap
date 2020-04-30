// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProductController on _ProductControllerBase, Store {
  final _$productsAtom = Atom(name: '_ProductControllerBase.products');

  @override
  ObservableFuture<List<ProductListModel>> get products {
    _$productsAtom.context.enforceReadPolicy(_$productsAtom);
    _$productsAtom.reportObserved();
    return super.products;
  }

  @override
  set products(ObservableFuture<List<ProductListModel>> value) {
    _$productsAtom.context.conditionallyRunInAction(() {
      super.products = value;
      _$productsAtom.reportChanged();
    }, _$productsAtom, name: '${_$productsAtom.name}_set');
  }

  final _$nameAtom = Atom(name: '_ProductControllerBase.name');

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

  final _$descriptionAtom = Atom(name: '_ProductControllerBase.description');

  @override
  String get description {
    _$descriptionAtom.context.enforceReadPolicy(_$descriptionAtom);
    _$descriptionAtom.reportObserved();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.context.conditionallyRunInAction(() {
      super.description = value;
      _$descriptionAtom.reportChanged();
    }, _$descriptionAtom, name: '${_$descriptionAtom.name}_set');
  }

  final _$priceAtom = Atom(name: '_ProductControllerBase.price');

  @override
  String get price {
    _$priceAtom.context.enforceReadPolicy(_$priceAtom);
    _$priceAtom.reportObserved();
    return super.price;
  }

  @override
  set price(String value) {
    _$priceAtom.context.conditionallyRunInAction(() {
      super.price = value;
      _$priceAtom.reportChanged();
    }, _$priceAtom, name: '${_$priceAtom.name}_set');
  }

  final _$averagetimeAtom = Atom(name: '_ProductControllerBase.averagetime');

  @override
  String get averagetime {
    _$averagetimeAtom.context.enforceReadPolicy(_$averagetimeAtom);
    _$averagetimeAtom.reportObserved();
    return super.averagetime;
  }

  @override
  set averagetime(String value) {
    _$averagetimeAtom.context.conditionallyRunInAction(() {
      super.averagetime = value;
      _$averagetimeAtom.reportChanged();
    }, _$averagetimeAtom, name: '${_$averagetimeAtom.name}_set');
  }

  final _$_ProductControllerBaseActionController =
      ActionController(name: '_ProductControllerBase');

  @override
  dynamic fetchData() {
    final _$actionInfo = _$_ProductControllerBaseActionController.startAction();
    try {
      return super.fetchData();
    } finally {
      _$_ProductControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateTitle(String value) {
    final _$actionInfo = _$_ProductControllerBaseActionController.startAction();
    try {
      return super.validateTitle(value);
    } finally {
      _$_ProductControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateDescription(String value) {
    final _$actionInfo = _$_ProductControllerBaseActionController.startAction();
    try {
      return super.validateDescription(value);
    } finally {
      _$_ProductControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validatePrince(String value) {
    final _$actionInfo = _$_ProductControllerBaseActionController.startAction();
    try {
      return super.validatePrince(value);
    } finally {
      _$_ProductControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateAverageTime(String value) {
    final _$actionInfo = _$_ProductControllerBaseActionController.startAction();
    try {
      return super.validateAverageTime(value);
    } finally {
      _$_ProductControllerBaseActionController.endAction(_$actionInfo);
    }
  }
}

mixin _$FormProductErrorState on _FormProductErrorState, Store {
  Computed<bool> _$hasErrorsComputed;

  @override
  bool get hasErrors =>
      (_$hasErrorsComputed ??= Computed<bool>(() => super.hasErrors)).value;

  final _$nameAtom = Atom(name: '_FormProductErrorState.name');

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

  final _$descriptionAtom = Atom(name: '_FormProductErrorState.description');

  @override
  String get description {
    _$descriptionAtom.context.enforceReadPolicy(_$descriptionAtom);
    _$descriptionAtom.reportObserved();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.context.conditionallyRunInAction(() {
      super.description = value;
      _$descriptionAtom.reportChanged();
    }, _$descriptionAtom, name: '${_$descriptionAtom.name}_set');
  }

  final _$priceAtom = Atom(name: '_FormProductErrorState.price');

  @override
  String get price {
    _$priceAtom.context.enforceReadPolicy(_$priceAtom);
    _$priceAtom.reportObserved();
    return super.price;
  }

  @override
  set price(String value) {
    _$priceAtom.context.conditionallyRunInAction(() {
      super.price = value;
      _$priceAtom.reportChanged();
    }, _$priceAtom, name: '${_$priceAtom.name}_set');
  }

  final _$averagetimeAtom = Atom(name: '_FormProductErrorState.averagetime');

  @override
  String get averagetime {
    _$averagetimeAtom.context.enforceReadPolicy(_$averagetimeAtom);
    _$averagetimeAtom.reportObserved();
    return super.averagetime;
  }

  @override
  set averagetime(String value) {
    _$averagetimeAtom.context.conditionallyRunInAction(() {
      super.averagetime = value;
      _$averagetimeAtom.reportChanged();
    }, _$averagetimeAtom, name: '${_$averagetimeAtom.name}_set');
  }
}
