import 'package:dio/dio.dart';
import 'package:projeto_fanap/app/shared/models/category_model.dart';
import 'package:projeto_fanap/app/shared/models/product_create_model.dart';
import 'package:projeto_fanap/app/shared/models/product_list_model.dart';
import 'package:projeto_fanap/app/shared/models/product_model.dart';
import 'package:projeto_fanap/app/shared/utils/setting_util.dart';

class ProductRepository {
  final Dio dio;

  ProductRepository(this.dio);

  Future<List<ProductListModel>> getAllProduct() async {
    Response response = await dio.get('/products');
    return (response.data as List)
        .map((item) => ProductListModel.fromJson(item))
        .toList();
  }

  Future<ProductModel> postProduct(ProductCreateModel model) async {
    Response response = await dio.post('/products', data: model);
    return ProductModel.fromJson(response.data[0]);
  }

  Future<List<ServiceCategory>> getCategory() async {
    var url = "${Settings.apiUrl}/categoria";
    Response response = await Dio().get(url);
    return (response.data as List)
        .map((item) => ServiceCategory.fromJson(item))
        .toList();
  }
}
