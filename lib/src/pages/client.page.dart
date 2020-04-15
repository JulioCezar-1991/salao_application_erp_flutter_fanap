import 'package:flutter/material.dart';
import 'package:projectfanap/src/bloc/home.bloc.dart';
import 'package:projectfanap/src/components/client-list.widget.dart';

import 'package:provider/provider.dart';

class ClientPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final HomeBloc bloc = Provider.of<HomeBloc>(context);

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.zero,
        child: ListView(
          children: <Widget>[
            ClientList(
              clients: bloc.clients,
            )
          ],
        ),
      ),
    );
  }
}
