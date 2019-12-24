import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projectfanap/src/RouteGeneratorController.dart';

class ServiceCreatePage extends StatefulWidget {
  @override
  _ServiceCreatePageState createState() => _ServiceCreatePageState();
}

class _ServiceCreatePageState extends State<ServiceCreatePage> {
  TextEditingController _controllerName = TextEditingController();
  TextEditingController _controllerValor = TextEditingController();
  TextEditingController _controllerTempoGasto = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.close,
          ),
          onPressed: () {
            Navigator.pushReplacementNamed(
                context, RouteGeneratorController.ROUTE_HOME);
          },
        ),
        title: Text(
          "Criar Serviço",
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 4),
            child: IconButton(
              icon: Icon(
                Icons.check,
              ),
              onPressed: () {    
              },
            ),
          ),
        ],
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
                height: 10,
              ),
              TextField(
                cursorColor: Colors.white,
                maxLength: 28,
                decoration: InputDecoration(
                  hintText: " Valor",
                  counterText: "",
                  icon: Icon(
                    FontAwesomeIcons.dollarSign,
                    size: 20,
                  ),
                ),
                controller: _controllerValor,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                cursorColor: Colors.white,
                maxLength: 28,
                decoration: InputDecoration(
                  hintText: " Tempo Médio Gasto",
                  counterText: "",
                  icon: Icon(
                    FontAwesomeIcons.userClock,
                    size: 20,
                  ),
                ),
                controller: _controllerTempoGasto,
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
