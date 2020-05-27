import 'package:dio/dio.dart';
import 'package:projeto_fanap/app/shared/models/customer_authenticate_model.dart';
import 'package:projeto_fanap/app/shared/models/customer_create_model.dart';
import 'package:projeto_fanap/app/shared/models/customer_list_model.dart';
import 'package:projeto_fanap/app/shared/models/customer_model.dart';
import 'package:projeto_fanap/app/shared/utils/setting_util.dart';

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

  Future authenticate(AuthenticateModel model) async {
    var url = "${Settings.apiUrl}/customers/authenticate";
    Response response = await Dio().post(url, data: model);
    return CustomerModel.fromJson(response.data);
  }

  Future<CustomerModel> customerCreate(CustomerCreaterModel model) async {
    Response response = await dio.post('/account/create', data: model);
    return CustomerModel.fromJson(response.data);
  }
}
