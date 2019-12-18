import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreateSchedulingScreen extends StatefulWidget {
  @override
  _CreateSchedulingScreenState createState() => _CreateSchedulingScreenState();
}

class _CreateSchedulingScreenState extends State<CreateSchedulingScreen> {
  TextEditingController _controllerName = TextEditingController();
  TextEditingController _controllerCelular = TextEditingController();
  TextEditingController _controllerFixo = TextEditingController();
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerData = TextEditingController();
  TextEditingController _controllerHora = TextEditingController();
  TextEditingController _controllerFormPagamento = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Novo Agendamento"),
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
              Row(
                children: <Widget>[
                  Container(
                    width: 200,
                    child: TextField(
                      cursorColor: Colors.white,
                      maxLength: 28,
                      decoration: InputDecoration(
                        hintText: " Data do Agendamento",
                        counterText: "",
                        icon: Icon(
                          Icons.calendar_today,
                          size: 20,
                        ),
                      ),
                      controller: _controllerData,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 110,
                    child: TextField(
                      cursorColor: Colors.white,
                      maxLength: 28,
                      decoration: InputDecoration(
                        hintText: " Horário",
                        counterText: "",
                      ),
                      controller: _controllerHora,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: 200,
                    child: TextField(
                      cursorColor: Colors.white,
                      maxLength: 28,
                      decoration: InputDecoration(
                        hintText: " Forma de Pagamento",
                        counterText: "",
                        icon: Icon(
                          FontAwesomeIcons.streetView,
                          size: 20,
                        ),
                      ),
                      controller: _controllerFormPagamento,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 110,
                    child: TextField(
                      cursorColor: Colors.white,
                      maxLength: 28,
                      decoration: InputDecoration(
                        hintText: " QTD Parcelas",
                        counterText: "",
                        
                      ),
                      controller: _controllerFormPagamento,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 240,
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
