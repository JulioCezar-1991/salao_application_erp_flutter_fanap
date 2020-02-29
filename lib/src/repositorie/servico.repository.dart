import 'package:dio/dio.dart';
import 'package:projectfanap/src/model/category.model.dart';
import 'package:projectfanap/src/model/servico-create.model.dart';
import 'package:projectfanap/src/model/servico-list.model.dart';
import 'package:projectfanap/src/model/servico.model.dart';
import 'package:projectfanap/src/setting.dart';

class ServicoRepository {
  Future<List<ServicoListModel>> getServico() async {
    var url = "${Settings.apiUrl}/servico";
    Response response = await Dio().get(url);
    return (response.data as List)
        .map((item) => ServicoListModel.fromJson(item))
        .toList();
  }

  Future<ServicoModel> postServico(ServicoCreateModel model) async {
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
