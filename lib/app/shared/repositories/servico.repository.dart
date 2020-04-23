import 'package:dio/dio.dart';
import 'package:projeto_fanap/app/shared/models/category.model.dart';
import 'package:projeto_fanap/app/shared/models/product-create.model.dart';
import 'package:projeto_fanap/app/shared/models/product-list.model.dart';
import 'package:projeto_fanap/app/shared/models/servico.model.dart';
import 'package:projeto_fanap/app/shared/utils/setting.dart';

class ServicoRepository {
  Future<List<ProductListModel>> getServico() async {
    var url = "${Settings.apiUrl}/products";
    Response response = await Dio().get(url);
    return (response.data as List)
        .map((item) => ProductListModel.fromJson(item))
        .toList();
  }

  Future<ServicoModel> postServico(ProductCreateModel model) async {
    var url = "${Settings.apiUrl}/service/create";
    Response response = await Dio().post(url, data: model);
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
