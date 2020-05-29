import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_fanap/app/modules/customer/customer_controller.dart';
import 'package:projeto_fanap/app/modules/customer/customer_create.page.dart';
import 'package:projeto_fanap/app/shared/components/customer_card_widget.dart';

class CustomerPage extends StatelessWidget {
  final String _title = "Gerencia de Usuários";
  @override
  Widget build(BuildContext context) {
    final _customerController = Modular.get<CustomerController>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        title: Text(
          "  ${this._title}",
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              _customerController.fetchCustomer();
            },
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Observer(
        builder: (_) {
          if (_customerController.customers.error != null) {
            return Center(
              child: IconButton(
                icon: Icon(
                  Icons.replay,
                  size: 40,
                ),
                onPressed: () {
                  _customerController.fetchCustomer();
                },
              ),
            );
          }
          if (_customerController.customers.value == null) {
            return Center(child: CircularProgressIndicator());
          }
          var list = _customerController.customers.value;
          return ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: CustomerCard(
                  item: list[index],
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => CustomerCreatePage()));
          }),
    );
  }
}
