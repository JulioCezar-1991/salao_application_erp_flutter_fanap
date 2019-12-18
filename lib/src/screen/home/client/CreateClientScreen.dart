import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projectfanap/src/controller/ControllerValidCpf.dart';

class CreateClientScreen extends StatefulWidget {
  @override
  _CreateClientScreenState createState() => _CreateClientScreenState();
}

class _CreateClientScreenState extends State<CreateClientScreen> {
  TextEditingController _controllerName = TextEditingController();
  TextEditingController _controllerCpf = TextEditingController();
  TextEditingController _controllerCelular = TextEditingController();
  TextEditingController _controllerFixo = TextEditingController();
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerDataNascimento = TextEditingController();
  TextEditingController _controllerEndereco = TextEditingController();
  TextEditingController _controllerBairro = TextEditingController();
  TextEditingController _controllerCidade = TextEditingController();
  TextEditingController _controllerUF = TextEditingController();

  ControllerValidCpf _controllerValidCpf = ControllerValidCpf();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Clientes"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 12, left: 20, bottom: 12, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                height: 12,
              ),
              TextField(
                cursorColor: Colors.white,
                maxLength: 28,
                decoration: InputDecoration(
                  hintText:
                      _controllerValidCpf.formatarCPF(_controllerCpf.text),
                  counterText: "",
                  icon: Icon(
                    Icons.perm_identity,
                    size: 20,
                  ),
                ),
                controller: _controllerCpf,
              ),
              SizedBox(
                height: 12,
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
                height: 12,
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
                height: 12,
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
                height: 12,
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
                height: 12,
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
                height: 12,
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
                height: 12,
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
               SizedBox(
                height: 12,
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
                controller: _controllerUF,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 40,
                    width: 150,
                    child: RaisedButton(
                      child: Text(
                        "Cancelar",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 150,
                    child: RaisedButton(
                      child: Text(
                        "Salvar",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
