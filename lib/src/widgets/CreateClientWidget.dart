import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreateClientWidget {
  static clientCreate(BuildContext context) {
    TextEditingController _controllerName = TextEditingController();
    TextEditingController _controllerCpf = TextEditingController();
    TextEditingController _controllerCelular = TextEditingController();
    TextEditingController _controllerFixo = TextEditingController();
    TextEditingController _controllerEmail = TextEditingController();
    TextEditingController _controllerDataNascimento = TextEditingController();
    TextEditingController _controllerEndereco = TextEditingController();
    TextEditingController _controllerBairro = TextEditingController();
    TextEditingController _controllerCidade = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Cadastro de Cliente", textAlign: TextAlign.center,),
          content: SingleChildScrollView(
            child: Column(
            children: <Widget>[
              TextField(
                cursorColor: Colors.white,
                maxLength: 28,
                decoration: InputDecoration(
                  hintText: " Nome Cliente",
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
                  hintText: " CPF",
                  counterText: "",
                  icon: Icon(
                    Icons.perm_identity,
                    size: 20,
                  ),
                ),
                controller: _controllerCpf,
              ),
              SizedBox(
                height: 8,
              ),
              TextField(
                cursorColor: Colors.white,
                maxLength: 28,
                decoration: InputDecoration(
                  hintText: " Data de Nascimento",
                  counterText: "",
                  icon: Icon(
                    Icons.calendar_today,
                    size: 20,
                  ),
                ),
                controller: _controllerDataNascimento,
              ),
              SizedBox(
                height: 8,
              ),
              TextField(
                cursorColor: Colors.white,
                maxLength: 28,
                decoration: InputDecoration(
                  hintText: " Telefone Celular",
                  counterText: "",
                  icon: Icon(
                    Icons.smartphone,
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
                  hintText: " Telefone Fixo",
                  counterText: "",
                  icon: Icon(
                    Icons.phone,
                    size: 20,
                  ),
                ),
                controller: _controllerFixo,
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
                  hintText: " Endereço",
                  counterText: "",
                  icon: Icon(
                    Icons.home,
                    size: 20,
                  ),
                ),
                controller: _controllerEndereco,
              ),
              SizedBox(
                height: 8,
              ),
              TextField(
                cursorColor: Colors.white,
                maxLength: 28,
                decoration: InputDecoration(
                  hintText: " Bairro",
                  counterText: "",
                  icon: Icon(
                    FontAwesomeIcons.streetView,
                    size: 20,
                  ),
                ),
                controller: _controllerBairro,
              ),
              SizedBox(
                height: 8,
              ),
              TextField(
                cursorColor: Colors.white,
                maxLength: 28,
                decoration: InputDecoration(
                  hintText: " Cidade",
                  counterText: "",
                  icon: Icon(
                    Icons.location_city,
                    size: 20,
                  ),
                ),
                controller: _controllerCidade,
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
