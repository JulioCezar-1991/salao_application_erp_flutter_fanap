import 'package:mobx/mobx.dart';
import 'package:projeto_fanap/app/shared/models/product-list.model.dart';
import 'package:projeto_fanap/app/shared/repositories/product.repository.dart';

part 'product_controller.g.dart';

class ProductController = _ProductControllerBase with _$ProductController;

abstract class _ProductControllerBase with Store {
  final ProductRepository repository;

  @observable
  ObservableFuture<List<ProductListModel>> products;

  @action
  fetchData() {
    products = repository.getAllProduct().asObservable();
  }

  _ProductControllerBase(this.repository) {
    fetchData();
  }
}
