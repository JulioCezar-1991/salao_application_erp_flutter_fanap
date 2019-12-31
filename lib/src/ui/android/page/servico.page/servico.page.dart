import 'package:flutter/material.dart';
import 'package:projectfanap/src/bloc/home.bloc.dart';
import 'package:projectfanap/src/ui/shared/widgets/servico-list.widget.dart';
import 'package:provider/provider.dart';

class ServicoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    final HomeBloc bloc = Provider.of<HomeBloc>(context);

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            ServicoList(
              servicos: bloc.servicos,
            )
          ],
        ),
      ),
    );
  }
}
