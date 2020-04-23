import 'package:dio/dio.dart';
import 'package:projeto_fanap/app/shared/models/category.model.dart';
import 'package:projeto_fanap/app/shared/models/product-create.model.dart';
import 'package:projeto_fanap/app/shared/models/product-list.model.dart';
import 'package:projeto_fanap/app/shared/models/servico.model.dart';
import 'package:projeto_fanap/app/shared/utils/setting.dart';

class ProductRepository {
  final Dio dio;

  ProductRepository(this.dio);

  Future<List<ProductListModel>> getAllProduct() async {
    Response response = await dio.get('/products');
    return (response.data as List)
        .map((item) => ProductListModel.fromJson(item))
        .toList();
  }

  Future<ServicoModel> postServico(ProductCreateModel model) async {
    Response response = await dio.post('/products/create', data: model);
    return ServicoModel.fromJson(response.data[0]);
  }

  Future<List<ServiceCategory>> getCategory() async {
    var url = "${Settings.apiUrl}/categoria";
    Response response = await Dio().get(url);
    return (response.data as List)
        .map((item) => ServiceCategory.fromJson(item))
        .toList();
  }
}
