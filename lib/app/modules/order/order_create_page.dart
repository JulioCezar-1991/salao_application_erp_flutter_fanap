import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';
import 'package:projeto_fanap/app/modules/order/order_controller.dart';
import 'package:projeto_fanap/app/shared/models/client_model.dart';
import 'package:projeto_fanap/app/shared/models/user_model.dart';
import 'dart:convert';

class OrderCreatePage extends StatefulWidget {
  OrderCreatePage() : super();

  @override
  _OrderCreatePageState createState() => _OrderCreatePageState();
}

class _OrderCreatePageState extends State<OrderCreatePage> {
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

  @override
  void initState() {
    getClients();
    getUsers();
    super.initState();
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

  final format = DateFormat("yyyy-MM-dd HH:mm");

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

  String dropdownValue = 'Status do Serviço';

  @override
  Widget build(BuildContext context) {
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
                            print(_orderController.validateCreateAll);
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
            loading
                ? CircularProgressIndicator()
                : searchTextNameUser = AutoCompleteTextField<UserModel>(
                    key: keyUser,
                    clearOnSubmit: false,
                    suggestions: users,
                    style: TextStyle(color: Colors.black, fontSize: 16.0),
                    decoration: InputDecoration(
                      hintText: "Pesquisa por nome",
                      hoverColor: Colors.red,
                      focusColor: Colors.red,
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
            loading
                ? CircularProgressIndicator()
                : searchTextNameClient = AutoCompleteTextField<ClientModel>(
                    key: keyClient,
                    clearOnSubmit: false,
                    suggestions: clients,
                    style: TextStyle(color: Colors.black, fontSize: 16.0),
                    decoration: InputDecoration(
                      hintText: "Pesquisa por nome",
                      hoverColor: Colors.red,
                      focusColor: Colors.red,
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
                      return rowClient(item);
                    },
                  ),
            Observer(
              builder: (_) {
                return DateTimeField(
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
                );
              },
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
                    child: DropdownButton(
                      value: dropdownValue,
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
                        setState(
                          () {
                            dropdownValue = newValue;
                          },
                        );
                      },
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
