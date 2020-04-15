import 'package:flutter/material.dart';
import 'package:projectfanap/src/components/client-card.widget.dart';
import 'package:projectfanap/src/components/loader.widget.dart';
import 'package:projectfanap/src/models/client-list.model.dart';

class ClientList extends StatelessWidget {
  final List<ClientListModel> clients;

  const ClientList({@required this.clients});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 410,
      child: Loader(
        object: clients,
        callback: list,
      ),
    );
  }

  Widget list() {
    return ListView.builder(
      itemCount: clients.length,
      itemBuilder: (context, index) {
        ClientListModel item = clients[index];
        return Padding(
          padding: EdgeInsets.all(5),
          child: ClientCard(
            item: item,
          ),
        );
      },
    );
  }
}
