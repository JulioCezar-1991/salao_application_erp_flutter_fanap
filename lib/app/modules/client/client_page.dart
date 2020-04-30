import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_fanap/app/modules/client/client_controller.dart';
import 'package:projeto_fanap/app/shared/components/client_card_widget.dart';

class ClientPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _clientController = Modular.get<ClientController>();
    return Scaffold(
      body: Observer(
        builder: (_) {
          if (_clientController.clients.error != null) {
            return Center(
              child: IconButton(
                icon: Icon(
                  Icons.replay,
                  size: 40,
                ),
                onPressed: () {
                  _clientController.fetchData();
                },
              ),
            );
          }
          if (_clientController.clients.value == null) {
            return Center(child: CircularProgressIndicator());
          }
          var list = _clientController.clients.value;
          return ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: ClientCard(
                  item: list[index],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
