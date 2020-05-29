import 'package:dio/dio.dart';
import 'package:projeto_fanap/app/shared/models/customer_create_model.dart';
import 'package:projeto_fanap/app/shared/models/customer_list_model.dart';
import 'package:projeto_fanap/app/shared/models/customer_model.dart';

class CustomerRepository {
  final Dio dio;

  CustomerRepository(this.dio);

  CustomerModel customerModel = CustomerModel();

  Future<List<CustomerListModel>> getAllCustomer() async {
    Response response = await dio.get('/customers');
    return (response.data as List)
        .map((item) => CustomerListModel.fromJson(item))
        .toList();
  }

  Future<CustomerModel> customerPost(CustomerCreaterModel model) async {
    Response response = await dio.post('/account/create', data: model);
    return CustomerModel.fromJson(response.data);
  }
}
