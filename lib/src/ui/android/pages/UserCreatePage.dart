import 'package:flutter/material.dart';
import 'package:projectfanap/src/RouteGeneratorController.dart';

class UserCreatePage extends StatefulWidget {
  @override
  _UserCreatePageState createState() => _UserCreatePageState();
}

class _UserCreatePageState extends State<UserCreatePage> {
  TextEditingController _controllerName = TextEditingController();

  TextEditingController _controllerEmail = TextEditingController();

  TextEditingController _controllerTelefone = TextEditingController();

  TextEditingController _controllerLogin = TextEditingController();

  TextEditingController _controllerPassword = TextEditingController();

  TextEditingController _controllerPermisao = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.popAndPushNamed(
                context, RouteGeneratorController.ROUTE_HOME);
          },
        ),
        title: Text("Criar Usuário"),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 4),
            child: IconButton(
              icon: Icon(
                Icons.check,
                size: 30,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
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
    );
  }
}
