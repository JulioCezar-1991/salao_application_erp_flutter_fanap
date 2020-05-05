import 'package:mobx/mobx.dart';
import 'package:projeto_fanap/app/shared/models/product_create_model.dart';
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
  String averagetime = '';

  @action
  void validateAverageTime(String value) {
    error.averagetime =
        isNull(value) || value.isEmpty ? 'Valor inválido' : null;
  }

  @observable
  var dataProductModel = ProductCreateModel();

  Future<ProductModel> _postCreate() async {
    var model = ProductCreateModel(
        title: title,
        description: description,
        averagetime: averagetime,
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
    validateDescription(description);
    validateAverageTime(averagetime);
    validatePrice(price);
    if (error.title == null &&
        error.description == null &&
        error.averagetime == null &&
        error.price == null) {
      _postCreate().then((procuct) async {
        if (procuct != null) {
          _postCreate();
        }
      });
    }
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
  String averagetime;

  @computed
  bool get hasErrors =>
      title != null ||
      description != null ||
      price != null ||
      averagetime != null;
}
