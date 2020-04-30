import 'package:mobx/mobx.dart';
import 'package:projeto_fanap/app/shared/models/product_list_model.dart';
import 'package:projeto_fanap/app/shared/repositories/product_repository.dart';
import 'package:validators/validators.dart';

part 'product_controller.g.dart';

class ProductController = _ProductControllerBase with _$ProductController;

abstract class _ProductControllerBase with Store {
  final FormProductErrorState error = FormProductErrorState();
  final ProductRepository _repository;

  @observable
  ObservableFuture<List<ProductListModel>> products;

  @action
  fetchData() {
    products = _repository.getAllProduct().asObservable();
  }

  _ProductControllerBase(this._repository) {
    fetchData();
  }

  @observable
  String name = '';

  @action
  void validateTitle(String value) {
    error.name = isNull(value) || value.isEmpty ? 'Nome invalido' : null;
  }

  @observable
  String description = '';

  @action
  void validateDescription(String value) {
    error.description =
        isNull(value) || value.isEmpty ? 'Descrição invalida' : null;
  }

  @observable
  String price = '';

  @action
  void validatePrince(String value) {
    error.price = isNull(value) || value.isEmpty ? 'Valor invalido' : null;
  }

  @observable
  String averagetime = '';

  @action
  void validateAverageTime(String value) {
    error.averagetime =
        isEmail(value) || value.isEmpty ? 'Valor invalido' : null;
  }
}

class FormProductErrorState = _FormProductErrorState
    with _$FormProductErrorState;

abstract class _FormProductErrorState with Store {
  @observable
  String name;

  @observable
  String description;

  @observable
  String price;

  @observable
  String averagetime;

  @computed
  bool get hasErrors =>
      name != null ||
      description != null ||
      price != null ||
      averagetime != null;
}
