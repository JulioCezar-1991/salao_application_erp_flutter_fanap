import 'package:flutter/material.dart';
import 'package:projectfanap/src/components/loader.widget.dart';
import 'package:projectfanap/src/components/servico-card.widget.dart';
import 'package:projectfanap/src/models/servico-list.model.dart';

class ServicoList extends StatelessWidget {
  final List<ServicoListModel> servicos;

  ServicoList({@required this.servicos});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 410,
      child: Loader(
        object: servicos,
        callback: list,
      ),
    );
  }

  Widget list() {
    return ListView.builder(
      itemCount: servicos.length,
      itemBuilder: (context, index) {
        ServicoListModel item = servicos[index];
        return Padding(
          padding: EdgeInsets.all(5),
          child: ServicoCard(
            item: item,
          ),
        );
      },
    );
  }
}
