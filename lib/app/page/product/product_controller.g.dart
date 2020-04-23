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
}
