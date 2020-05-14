import 'package:mobx/mobx.dart';
import 'package:projeto_fanap/app/shared/models/product_create_model.dart';
import 'package:projeto_fanap/app/shared/models/product_delete_model.dart';
import 'package:projeto_fanap/app/shared/models/product_list_model.dart';
import 'package:projeto_fanap/app/shared/models/product_model.dart';
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
  fetchProduct() {
    products = _repository.getAllProduct().asObservable();
  }

  _ProductControllerBase(this._repository) {
    fetchProduct();
  }

  @observable
  String title = '';

  @action
  void validateTitle(String value) {
    error.title = isNull(value) || value.isEmpty ? 'Nome inválido' : null;
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
  void validatePrice(String value) {
    error.price = isNull(value) || value.isEmpty ? 'Valor invalida' : null;
  }

  @observable
  String type = '';

  @action
  void validateType(String value) {
    error.type = isNull(value) || value.isEmpty ? 'Tipo invalida' : null;
  }

  List<String> listType = [
    'Tipo de Serviço',
    'Pintura das Unhas',
    'Pintura de Cabelo',
    'Depilação',
    'Lavagem',
    'Corte',
  ];

  @observable
  String averagetime = '';

  @action
  void validateAverageTime(String value) {
    error.averagetime =
        isNull(value) || value.isEmpty ? 'Tempo médio inválido' : null;
  }

  @observable
  var dataProductModel = ProductCreateModel();

  Future<ProductModel> _postCreate() async {
    var model = ProductCreateModel(
        title: title,
        description: description,
        averagetime: averagetime,
        type: type,
        price: double.parse(price));
    try {
      var res = await _repository.postProduct(model);
      return res;
    } catch (ex) {
      print(ex);
      dataProductModel = null;
    }
    return null;
  }

  void validateAll() async {
    validateTitle(title);
    validateAverageTime(averagetime);
    validatePrice(price);
    validateDescription(description);
    validateType(type);
    if (error.title == null &&
        error.description == null &&
        error.averagetime == null &&
        error.price == null &&
        error.type == null) {
      _postCreate().then((procuct) async {});
    }
  }

  void deleteProduct(String id) async {
    _deleteProduct(id);
  }

  Future<ProductModel> _deleteProduct(String id) async {
    var model = ProductDeleteModel(id: id);
    try {
      var res = await _repository.deleteProduct(model);
      return res;
    } catch (error) {
      dataProductModel = null;
    }
    return null;
  }

  void patchProduct(String id) async {
    _patchProduct(dataProductModel, id);
  }

  Future<ProductModel> _patchProduct(ProductCreateModel model, id) async {
    var model = ProductCreateModel(
      id: id,
      title: this.title,
      /* price: this.price.toString(), */
      averagetime: this.averagetime,
      description: this.description,
    );
    try {
      var res = await _repository.patchProduct(model);
      return res;
    } catch (error) {
      dataProductModel = null;
    }
    return null;
  }
}

class FormProductErrorState = _FormProductErrorState
    with _$FormProductErrorState;

abstract class _FormProductErrorState with Store {
  @observable
  String title;

  @observable
  String description;

  @observable
  String price;

  @observable
  String type;

  @observable
  String averagetime;

  @computed
  bool get hasErrors =>
      title != null ||
      description != null ||
      price != null ||
      type != null ||
      averagetime != null;
}
