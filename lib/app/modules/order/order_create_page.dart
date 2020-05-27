import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';
import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:projeto_fanap/app/modules/client/client_controller.dart';
import 'package:projeto_fanap/app/modules/customer/customer_controller.dart';
import 'package:projeto_fanap/app/modules/order/order_controller.dart';
import 'package:projeto_fanap/app/modules/product/product_controller.dart';
import 'package:projeto_fanap/app/shared/components/row_client_widget.dart';
import 'package:projeto_fanap/app/shared/components/row_customer_widget.dart';
import 'package:projeto_fanap/app/shared/components/row_product_widget.dart';
import 'package:projeto_fanap/app/shared/models/client_list_model.dart';
import 'package:projeto_fanap/app/shared/models/customer_list_model.dart';
import 'package:projeto_fanap/app/shared/models/product_list_model.dart';

class OrderCreatePage extends StatefulWidget {
  OrderCreatePage() : super();

  @override
  _OrderCreatePageState createState() => _OrderCreatePageState();
}

class _OrderCreatePageState extends State<OrderCreatePage> {
  AutoCompleteTextField searchTextNameCustomer;
  AutoCompleteTextField searchTextNameClient;
  AutoCompleteTextField searchTextNameProduct;

  GlobalKey<AutoCompleteTextFieldState<CustomerListModel>> keyCustomer =
      new GlobalKey();
  GlobalKey<AutoCompleteTextFieldState<ClientListModel>> keyClient =
      new GlobalKey();
  GlobalKey<AutoCompleteTextFieldState<ProductListModel>> keyProduct =
      new GlobalKey();

  final _customerController = Modular.get<CustomerController>();
  final _clientController = Modular.get<ClientController>();
  final _productController = Modular.get<ProductController>();
  final _orderController = Modular.get<OrderController>();

  final format = DateFormat("yyyy-MM-dd HH:mm");

  @override
  Widget build(BuildContext context) {
    MediaQueryData _queryData = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Agendamento"),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 4),
            child: IconButton(
              icon: Icon(
                Icons.check,
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Confirmar Agendamento"),
                      actions: <Widget>[
                        FlatButton(
                          child: Text(
                            "Salvar",
                            style:
                                TextStyle(color: Theme.of(context).accentColor),
                          ),
                          onPressed: () {
                            _orderController.validateCreateAll();
                            _orderController.fetchOrderDone();
                            _orderController.fetchOrderOpen();
                            _orderController.fetchOrderCanceled();

                            Modular.to.pushReplacementNamed(
                              '/home',
                            );
                          },
                        ),
                        FlatButton(
                          child: Text(
                            "Cancelar",
                            style:
                                TextStyle(color: Theme.of(context).accentColor),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 12, left: 20, bottom: 6, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(right: 16),
                  child: Icon(
                    Icons.perm_data_setting,
                    color: Colors.grey,
                  ),
                ),
                Container(
                  width: _queryData.size.width / 1.301,
                  child: searchTextNameCustomer =
                      AutoCompleteTextField<CustomerListModel>(
                    key: keyCustomer,
                    clearOnSubmit: false,
                    suggestions: _customerController.customers.value,
                    style: TextStyle(color: Colors.black, fontSize: 16.0),
                    decoration: InputDecoration(
                      hintText: "Pesquisa por nome",
                      alignLabelWithHint: false,
                      counterStyle: TextStyle(color: Colors.transparent),
                      labelText: "Responsavel pelo serviço",
                      labelStyle: TextStyle(
                        color: Theme.of(context).accentColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                    itemFilter: (item, query) {
                      return item.name
                          .toLowerCase()
                          .startsWith(query.toLowerCase());
                    },
                    itemSorter: (a, b) {
                      return a.name.compareTo(b.name);
                    },
                    itemSubmitted: (item) {
                      _orderController.idCustomer = item.sId;
                      setState(
                        () {
                          searchTextNameCustomer.textField.controller.text =
                              item.name;
                        },
                      );
                    },
                    itemBuilder: (context, item) {
                      return RowCustomerWidget(customer: item);
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(right: 16),
                  child: Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                ),
                Container(
                  width: _queryData.size.width / 1.301,
                  child: searchTextNameClient =
                      AutoCompleteTextField<ClientListModel>(
                    key: keyClient,
                    clearOnSubmit: false,
                    suggestions: _clientController.clients.value,
                    style: TextStyle(color: Colors.black, fontSize: 16.0),
                    decoration: InputDecoration(
                      hintText: "Pesquisa por nome",
                      alignLabelWithHint: false,
                      counterStyle: TextStyle(color: Colors.transparent),
                      labelText: "Nome do Cliente",
                      labelStyle: TextStyle(
                        color: Theme.of(context).accentColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                    itemFilter: (item, query) {
                      return item.name
                          .toLowerCase()
                          .startsWith(query.toLowerCase());
                    },
                    itemSorter: (a, b) {
                      return a.name.compareTo(b.name);
                    },
                    itemSubmitted: (item) {
                      _orderController.idClient = item.sId;
                      setState(
                        () {
                          searchTextNameClient.textField.controller.text =
                              item.name;
                        },
                      );
                    },
                    itemBuilder: (context, item) {
                      return RowClientWidget(client: item);
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(right: 16),
                  child: Icon(
                    Icons.timer,
                    color: Colors.grey,
                  ),
                ),
                Expanded(
                  child: DateTimeField(
                    format: format,
                    decoration: InputDecoration(
                      labelText: "Data do agendamento",
                      labelStyle:
                          TextStyle(color: Theme.of(context).primaryColor),
                    ),
                    onShowPicker: (context, currentValue) async {
                      final date = await showDatePicker(
                          context: context,
                          firstDate: DateTime(2020),
                          initialDate: currentValue ?? DateTime.now(),
                          lastDate: DateTime(2050));
                      if (date != null) {
                        final time = await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.fromDateTime(
                              currentValue ?? DateTime.now()),
                        );
                        _orderController.schedulingDate = date.toString();
                        return DateTimeField.combine(date, time);
                      } else {
                        print(currentValue);
                        return currentValue;
                      }
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(right: 16),
                  child: Icon(
                    Icons.description,
                    color: Colors.grey,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 50,
                    child: Observer(
                      builder: (_) => DropdownButton(
                        value: _orderController.status,
                        isExpanded: true,
                        icon: Icon(
                          Icons.arrow_downward,
                          color: Theme.of(context).primaryColor,
                        ),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                        ),
                        underline: Container(
                          height: 2,
                          color: Theme.of(context).primaryColor,
                        ),
                        items: _orderController.listStatus
                            .map<DropdownMenuItem<String>>(
                          (String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          },
                        ).toList(),
                        onChanged: (String newValue) {
                          _orderController.status = newValue;
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(right: 16),
                  child: Icon(
                    Icons.attach_money,
                    color: Colors.grey,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 50,
                    child: Observer(
                      builder: (_) => DropdownButton(
                        value: _orderController.payment,
                        isExpanded: true,
                        icon: Icon(
                          Icons.arrow_downward,
                          color: Theme.of(context).primaryColor,
                        ),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                        ),
                        underline: Container(
                          height: 2,
                          color: Theme.of(context).primaryColor,
                        ),
                        items: _orderController.listFormPayment
                            .map<DropdownMenuItem<String>>(
                          (String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          },
                        ).toList(),
                        onChanged: (String newValue) {
                          _orderController.payment = newValue;
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(right: 16),
                  child: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ),
                Container(
                  width: _queryData.size.width / 1.29,
                  child: searchTextNameProduct =
                      AutoCompleteTextField<ProductListModel>(
                    key: keyProduct,
                    clearOnSubmit: false,
                    suggestions: _productController.products.value,
                    style: TextStyle(color: Colors.black, fontSize: 16.0),
                    decoration: InputDecoration(
                      hintText: "Pesquisa por nome",
                      alignLabelWithHint: false,
                      counterStyle: TextStyle(color: Colors.transparent),
                      labelText: "Nome do Serviço",
                      labelStyle: TextStyle(
                        color: Theme.of(context).accentColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                    itemFilter: (item, query) {
                      return item.title
                          .toLowerCase()
                          .startsWith(query.toLowerCase());
                    },
                    itemSorter: (a, b) {
                      return a.title.compareTo(b.title);
                    },
                    itemSubmitted: (item) {
                      _orderController.product.title = item.title;
                      _orderController.product.price = item.price;
                      _orderController.listProduct
                          .add(_orderController.product);

                      for (var i = 0;
                          i < _orderController.listProduct.length;
                          i++) {
                        print(_orderController.listProduct[i].title);
                      }
                      _orderController.changeSubtotal();
                      setState(
                        () {
                          searchTextNameProduct.textField.controller.text =
                              item.title;
                        },
                      );
                    },
                    itemBuilder: (context, item) {
                      return RowProductWidget(product: item);
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Theme.of(context).accentColor, width: 1.6),
                borderRadius: BorderRadius.circular(5),
              ),
              child: SingleChildScrollView(
                padding: EdgeInsets.all(3),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5, top: 5),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Serviços",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w800),
                          ),
                          SizedBox(
                            width: _queryData.size.width / 2.1,
                          ),
                          Text(
                            "  Valor",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                    ),
                    for (var i = 0;
                        i < _orderController.listProduct.length;
                        i++)
                      Row(
                        children: <Widget>[
                          Container(
                            width: _queryData.size.width / 1.6,
                            child: Text(_orderController.listProduct[i].title),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            width: _queryData.size.width / 5.5,
                            child: Text(
                              _orderController.listProduct[i].price.toString(),
                            ),
                          ),
                        ],
                      ),
                    Divider(),
                    Row(
                      children: <Widget>[
                        Container(
                          width: _queryData.size.width / 1.6,
                          child: Text('Total:'),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Observer(
                          builder: (_) => Container(
                            width: _queryData.size.width / 5.5,
                            child: Text(
                              _orderController.subtotal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/* Widget rowCustomer(CustomerListModel customer) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          customer.name,
          style: TextStyle(fontSize: 18.0),
        ),
      ),
    ],
  );
}

Widget rowClient(ClientListModel client) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          client.name,
          style: TextStyle(fontSize: 18.0),
        ),
      ),
    ],
  );
}

Widget rowProduct(ProductListModel product) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          product.title,
          style: TextStyle(fontSize: 18.0),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(Icons.add_shopping_cart),
      ),
    ],
  );
} */
