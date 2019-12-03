import 'package:flutter/material.dart';

class CreateUserWidget {

  static userCreate(BuildContext context) {
    TextEditingController _controllerName = TextEditingController();
    TextEditingController _controllerLogin = TextEditingController();
    TextEditingController _controllerPassWord = TextEditingController();
    TextEditingController _controllerCelular = TextEditingController();
    TextEditingController _controllerEmail = TextEditingController();

    showDialog(
     
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Cadastro de Usuário", textAlign: TextAlign.center,),
          content: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                TextField(
                  cursorColor: Colors.white,
                  maxLength: 28,
                  decoration: InputDecoration(
                    hintText: " Nome Completo",
                    counterText: "",
                    icon: Icon(
                      Icons.perm_identity,
                      size: 20,
                    ),
                  ),
                  controller: _controllerName,
                ),
                SizedBox(
                  height: 8,
                ),
                TextField(
                  cursorColor: Colors.white,
                  maxLength: 28,
                  decoration: InputDecoration(
                    hintText: " Telefone",
                    counterText: "",
                    icon: Icon(
                      Icons.phone,
                      size: 20,
                    ),
                  ),
                  controller: _controllerCelular,
                ),
                SizedBox(
                  height: 8,
                ),
                TextField(
                  cursorColor: Colors.white,
                  maxLength: 28,
                  decoration: InputDecoration(
                    hintText: " E-Mail",
                    counterText: "",
                    icon: Icon(
                      Icons.email,
                      size: 20,
                    ),
                  ),
                  controller: _controllerEmail,
                ),
                SizedBox(
                  height: 8,
                ),
                TextField(
                  cursorColor: Colors.white,
                  maxLength: 28,
                  decoration: InputDecoration(
                    hintText: " Usuario",
                    counterText: "",
                    icon: Icon(
                      Icons.perm_identity,
                      size: 20,
                    ),
                  ),
                  controller: _controllerLogin,
                ),
                SizedBox(
                  height: 8,
                ),
                TextField(
                  cursorColor: Colors.white,
                  maxLength: 28,
                  decoration: InputDecoration(
                    hintText: " Senha",
                    counterText: "",
                    icon: Icon(
                      Icons.lock_open,
                      size: 20,
                    ),
                  ),
                  controller: _controllerPassWord,
                ),
                SizedBox(
                  height: 8,
                ),
                TextField(
                  cursorColor: Colors.white,
                  maxLength: 28,
                  decoration: InputDecoration(
                    hintText: " Repita a Senha",
                    counterText: "",
                    icon: Icon(
                      Icons.lock_outline,
                      size: 20,
                    ),
                  ),
                  controller: _controllerPassWord,
                ),
              ],
            ),
          ),
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
