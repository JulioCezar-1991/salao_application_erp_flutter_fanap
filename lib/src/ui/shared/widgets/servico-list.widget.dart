import 'package:flutter/material.dart';
import 'package:projectfanap/src/model/servico-list.model.dart';
import 'package:projectfanap/src/ui/shared/widgets/loader.widget.dart';
import 'package:projectfanap/src/ui/shared/widgets/servico-card.widget.dart';

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


