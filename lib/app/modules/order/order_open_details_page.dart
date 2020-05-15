import 'dart:convert';

import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';
import 'package:projeto_fanap/app/modules/order/order_controller.dart';

import 'package:projeto_fanap/app/shared/models/client_model.dart';
import 'package:projeto_fanap/app/shared/models/order_open_list_model.dart';
import 'package:projeto_fanap/app/shared/models/user_model.dart';

class OrderOpenDetailsPage extends StatefulWidget {
  final OrderOpenListModel item;

  const OrderOpenDetailsPage({Key key, this.item});

  @override
  _OrderOpenDetailsPageState createState() => _OrderOpenDetailsPageState();
}

class _OrderOpenDetailsPageState extends State<OrderOpenDetailsPage> {
  AutoCompleteTextField searchTextNameUser;
  AutoCompleteTextField searchTextNameClient;

  GlobalKey<AutoCompleteTextFieldState<UserModel>> keyUser = new GlobalKey();
  GlobalKey<AutoCompleteTextFieldState<ClientModel>> keyClient =
      new GlobalKey();

  final _orderController = Modular.get<OrderController>();

  Dio dio = Dio();

  static List<UserModel> users = new List<UserModel>();
  static List<ClientModel> clients = new List<ClientModel>();

  bool loading = true;

  void getUsers() async {
    try {
      final response = await dio.get("http://192.168.137.1:2212/customers");
      if (response.statusCode == 200) {
        users = loadUsers(json.encode(response.data));
        setState(() {
          loading = false;
        });
      } else {
        print("Error getting users.");
      }
    } catch (e) {
      print("Error getting users.");
    }
  }

  void getClients() async {
    try {
      final response = await dio.get("http://192.168.137.1:2212/clients");
      if (response.statusCode == 200) {
        clients = loadClients(json.encode(response.data));
        setState(() {
          loading = false;
        });
      } else {
        print("Error getting users.");
      }
    } catch (e) {
      print("Error getting users.");
    }
  }

  static List<UserModel> loadUsers(String jsonString) {
    final parsed = json.decode(jsonString).cast<Map<String, dynamic>>();
    return parsed.map<UserModel>((json) => UserModel.fromJson(json)).toList();
  }

  static List<ClientModel> loadClients(String jsonString) {
    final parsed = json.decode(jsonString).cast<Map<String, dynamic>>();
    return parsed
        .map<ClientModel>((json) => ClientModel.fromJson(json))
        .toList();
  }

  Widget rowUser(UserModel user) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            user.name,
            style: TextStyle(fontSize: 18.0),
          ),
        ),
      ],
    );
  }

  final format = DateFormat("dd/MM/yyyy - HH:mm");

  Widget rowClient(ClientModel user) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            user.name,
            style: TextStyle(fontSize: 18.0),
          ),
        ),
      ],
    );
  }

  @override
  void initState() {
    getClients();
    getUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _orderController.status = widget.item.status;
    _orderController.schedulingDate = widget.item.schedulingdate;

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
                            /* _clientController.patchClient(widget.item.sId);*/
                            _orderController.fetchOrderOpen();
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
                            /* _clientController.deleteClient(); */
                            _orderController.fetchOrderOpen();
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
        padding: EdgeInsets.only(top: 12, left: 20, bottom: 6, right: 20),
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
            loading
                ? CircularProgressIndicator()
                : searchTextNameUser = AutoCompleteTextField<UserModel>(
                    key: keyUser,
                    suggestions: users,
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
                      _orderController.idUser = item.sId;
                      setState(
                        () {
                          searchTextNameUser.textField.controller.text =
                              item.name;
                        },
                      );
                    },
                    itemBuilder: (context, item) {
                      return rowUser(item);
                    },
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
            loading
                ? CircularProgressIndicator()
                : searchTextNameClient = AutoCompleteTextField<ClientModel>(
                    key: keyClient,
                    suggestions: clients,
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
                      return rowClient(item);
                    },
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
            Observer(
              builder: (_) => DateTimeField(
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
          ],
        ),
      ),
    );
  }
}
