import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';
import 'package:projeto_fanap/app/modules/client/client_controller.dart';
import 'package:projeto_fanap/app/modules/customer/customer_controller.dart';
import 'package:projeto_fanap/app/modules/order/order_controller.dart';
import 'package:projeto_fanap/app/shared/components/row_client_widget.dart';
import 'package:projeto_fanap/app/shared/components/row_customer_widget.dart';
import 'package:projeto_fanap/app/shared/models/client_list_model.dart';
import 'package:projeto_fanap/app/shared/models/customer_list_model.dart';
import 'package:projeto_fanap/app/shared/models/order_done_list_model.dart';

class OrderDoneDetailsPage extends StatefulWidget {
  final OrderDoneListModel item;

  const OrderDoneDetailsPage({Key key, this.item});

  @override
  _OrderDoneDetailsPageState createState() => _OrderDoneDetailsPageState();
}

class _OrderDoneDetailsPageState extends State<OrderDoneDetailsPage> {
  AutoCompleteTextField searchTextNameCustomer;
  AutoCompleteTextField searchTextNameClient;

  GlobalKey<AutoCompleteTextFieldState<CustomerListModel>> keyCustomer =
      new GlobalKey();
  GlobalKey<AutoCompleteTextFieldState<ClientListModel>> keyClient =
      new GlobalKey();

  final _customerController = Modular.get<CustomerController>();
  final _clientController = Modular.get<ClientController>();
  final _orderController = Modular.get<OrderController>();

  final format = DateFormat("dd/MM/yyyy - HH:mm");

  double subTotal() {
    double subTotal = 0;
    for (Itens item in widget.item.itens) {
      subTotal += item.product.price;
    }
    return subTotal;
  }

  @override
  void initState() {
    subTotal();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _orderController.status = widget.item.status;
    _orderController.schedulingDate = widget.item.schedulingdate;

    MediaQueryData _queryData = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Detalhes Agendamento",
          style: TextStyle(fontSize: 15),
        ),
        actions: <Widget>[
          // Icone de Atualização //
          IconButton(
            icon: Icon(
              Icons.update,
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Confirmar Atualização da Orde de Serviço"),
                    actions: <Widget>[
                      FlatButton(
                        child: Text(
                          "Confirmar",
                          style:
                              TextStyle(color: Theme.of(context).accentColor),
                        ),
                        onPressed: () {
                          try {
                            _orderController.patchOrder(widget.item.sId);
                            _orderController.fetchOrderDone();
                            Modular.to.popAndPushNamed(
                              '/home',
                            );
                          } catch (e) {}
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
          // Icone de Delete //
          IconButton(
            icon: Icon(
              Icons.delete_outline,
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Confirmar Exclusão do Serviço"),
                    actions: <Widget>[
                      FlatButton(
                        child: Text(
                          "Confirmar",
                          style:
                              TextStyle(color: Theme.of(context).accentColor),
                        ),
                        onPressed: () {
                          try {
                            _orderController.deleteOrder(widget.item.sId);
                            _orderController.fetchOrderDone();
                            Modular.to.popAndPushNamed(
                              '/home',
                            );
                          } catch (e) {}
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
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 20, bottom: 6, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Responsavel Pelo Serviço",
                  style: TextStyle(color: Theme.of(context).accentColor),
                ),
              ),
            ),
            Container(
              child: searchTextNameCustomer =
                  AutoCompleteTextField<CustomerListModel>(
                key: keyCustomer,
                clearOnSubmit: false,
                suggestions: _customerController.customers.value,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: widget.item.customer.name,
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black,
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
            Padding(
              padding: const EdgeInsets.only(bottom: 5, top: 10),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Nome do Cliente",
                  style: TextStyle(color: Theme.of(context).accentColor),
                ),
              ),
            ),
            Container(
              child: searchTextNameClient =
                  AutoCompleteTextField<ClientListModel>(
                key: keyClient,
                clearOnSubmit: false,
                suggestions: _clientController.clients.value,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: widget.item.client.name,
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black,
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
            Padding(
              padding: const EdgeInsets.only(bottom: 5, top: 10),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Data do Agendamento",
                  style: TextStyle(color: Theme.of(context).accentColor),
                ),
              ),
            ),
            DateTimeField(
              format: format,
              initialValue: DateTime.parse(_orderController.schedulingDate),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
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
                    initialTime:
                        TimeOfDay.fromDateTime(currentValue ?? DateTime.now()),
                  );

                  _orderController.schedulingDate = date.toString();
                  return DateTimeField.combine(date, time);
                } else {
                  return currentValue;
                }
              },
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5, top: 10),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Condição de Pagameno",
                  style: TextStyle(color: Theme.of(context).accentColor),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(5),
                    height: 62,
                    decoration: new BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(4),
                      shape: BoxShape.rectangle,
                    ),
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
            Padding(
              padding: const EdgeInsets.only(bottom: 5, top: 10),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Estado do Agendamento",
                  style: TextStyle(color: Theme.of(context).accentColor),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(5),
                    height: 62,
                    decoration: new BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(4),
                      shape: BoxShape.rectangle,
                    ),
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
            Padding(
              padding: const EdgeInsets.only(bottom: 5, top: 10),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Tabela de Serviços",
                  style: TextStyle(color: Theme.of(context).accentColor),
                ),
              ),
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
                    for (Itens item in widget.item.itens)
                      Row(
                        children: <Widget>[
                          Container(
                            width: _queryData.size.width / 1.6,
                            child: Text(item.product.title),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            width: _queryData.size.width / 5.5,
                            child: Text(
                              "    ${item.product.price.toString()}",
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
                        Container(
                          width: _queryData.size.width / 5.5,
                          child: Text(
                            "    ${subTotal()}",
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
