import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreateServiceScreen extends StatefulWidget {
  @override
  _CreateServiceScreenState createState() => _CreateServiceScreenState();
}

class _CreateServiceScreenState extends State<CreateServiceScreen> {
  TextEditingController _controllerName = TextEditingController();
  TextEditingController _controllerValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastrar Serviços"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 10, left: 20, bottom: 10, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextField(
                cursorColor: Colors.white,
                maxLength: 28,
                decoration: InputDecoration(
                  hintText: " Nome do Serviço",
                  counterText: "",
                  icon: Icon(
                    FontAwesomeIcons.cut,
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
                  hintText: "Valor",
                  counterText: "",
                  icon: Icon(
                    FontAwesomeIcons.dollarSign,
                    size: 20,
                  ),
                ),
                controller: _controllerValor,
              ),
              SizedBox(
                height: 460,
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
