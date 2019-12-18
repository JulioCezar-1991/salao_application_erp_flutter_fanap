import 'package:flutter/material.dart';
import 'package:projectfanap/src/service/UserService.dart';


class CreateUserWidget {

  static userCreate(BuildContext context) {

    TextEditingController _controllerName = TextEditingController();
    TextEditingController _controllerEmail = TextEditingController();
    TextEditingController _controllerTelefone = TextEditingController();
    TextEditingController _controllerLogin = TextEditingController();
    TextEditingController _controllerPassword = TextEditingController();
    TextEditingController _controllerPermisao = TextEditingController();
    


    UserService _userService = UserService();

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
                  controller: _controllerTelefone,
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
                  controller: _controllerPassword,
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
                  controller: _controllerPassword,
                ),
                SizedBox(
                  height: 8,
                ),
                TextField(
                  cursorColor: Colors.white,
                  maxLength: 28,
                  decoration: InputDecoration(
                    hintText: " Selecione uma Permissão",
                    counterText: "",
                    icon: Icon(
                      Icons.perm_contact_calendar,
                      size: 20,
                    ),
                  ),
                  controller: _controllerPermisao,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text("Salvar"),
              onPressed: () async {
                _userService.createUser(_controllerName.text,_controllerEmail.text,_controllerTelefone.text,_controllerLogin.text,_controllerPassword.text);
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
