import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_fanap/app/modules/client/client_controller.dart';
import 'package:projeto_fanap/app/shared/models/client_list_model.dart';

class ClientDetails extends StatefulWidget {
  final ClientListModel item;

  const ClientDetails({Key key, this.item});

  @override
  _ClientDetailsState createState() => _ClientDetailsState();
}

class _ClientDetailsState extends State<ClientDetails> {
  @override
  Widget build(BuildContext context) {
    final _clientController = Modular.get<ClientController>();
    return Text(widget.item.name);
  }
}
