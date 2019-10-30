import 'package:flutter/material.dart';

class ServiceCreateWidget {
  static createService(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Cadastor de Serviço"),
          content: Text("Usuario Criado Com Sucesso"),
          actions: <Widget>[
            FlatButton(
              child: Text("Salvar"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            FlatButton(
              child: Text("Cancelar"),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        );
      },
    );
  }
}
