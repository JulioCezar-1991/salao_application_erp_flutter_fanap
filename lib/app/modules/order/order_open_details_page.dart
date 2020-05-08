import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_fanap/app/modules/order/order_controller.dart';
import 'package:projeto_fanap/app/shared/components/text_field_update_widget.dart';
import 'package:projeto_fanap/app/shared/models/order_open_list_model.dart';

class OrderOpenDetailsPage extends StatefulWidget {
  final OrderOpenListModel item;

  const OrderOpenDetailsPage({Key key, this.item});

  @override
  _OrderOpenDetailsPageState createState() => _OrderOpenDetailsPageState();
}

class _OrderOpenDetailsPageState extends State<OrderOpenDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final _orderController = Modular.get<OrderController>();

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
          children: <Widget>[
            Observer(
              builder: (_) {
                return TextFieldUpdate(
                  keyboardType: TextInputType.text,
                  initialValue: widget.item.client.name,
                  labelText: 'Nome Completo',
                  onChanged: (value) {
                    /* _clientController.name = value; */
                  },
                  /* errorText: _clientController.error.name, */
                  maxLength: 38,
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}