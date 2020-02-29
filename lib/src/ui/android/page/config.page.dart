import 'package:flutter/material.dart';
import 'package:projectfanap/src/route-generator.controller.dart';
import 'package:projectfanap/src/ui/shared/validator/CNPJUtil.dart';
import 'package:projectfanap/src/ui/shared/validator/CPFUtil.dart';

class ConfigPage extends StatefulWidget {
  @override
  _ConfigPageState createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  static TextEditingController _controllerURL = TextEditingController();
  static TextEditingController _controllerPort = TextEditingController();
  static TextEditingController _controllerCNPJ = TextEditingController();
  static TextEditingController _controllerCPF = TextEditingController();

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  String url = _controllerURL.text = "http://";
  String port = _controllerPort.text = "8080";
  String cnpj = _controllerCNPJ.text;
  String cpf = _controllerCPF.text;

  CNPJUtil _cnpjUtil = CNPJUtil();
  CPFUtil _cpfUtil = CPFUtil();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.popAndPushNamed(
                context, RouteGeneratorController.ROUTE_HOME);
          },
        ),
        title: Text("Configurações"),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: IconButton(
              icon: Icon(
                Icons.check,
                size: 30,
              ),
              onPressed: () {
                return showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: Text("Salvar Dados"),
                    content: Text(
                      "Tem certezar que quer salvar os dados? Se os dados não estiverem corretos você poderar ficar sem acesso aos serviços.",
                      textAlign: TextAlign.justify,
                    ),
                    actions: <Widget>[
                      FlatButton(
                        child: Text("Cancelar"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      FlatButton(
                        child: Text("Salvar"),
                        onPressed: () {
                          Navigator.popAndPushNamed(
                              context, RouteGeneratorController.ROUTE_HOME);
                        },
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(20),
                child: Text(
                  "Servidor",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color.fromRGBO(0, 173, 238, 1),
                  ),
                ),
              ),
              Divider(
                height: 5,
                indent: 20,
                endIndent: 20,
                thickness: 1.5,
              ),
              GestureDetector(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                        child: Text(
                          "URL do Servidor",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.black),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Text(url),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  return showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Digite a URL"),
                        content: TextField(
                            controller: _controllerURL,
                            keyboardType: TextInputType.url),
                        actions: <Widget>[
                          FlatButton(
                            child: Text("Cancelar"),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          FlatButton(
                            child: Text("Salvar"),
                            onPressed: () {
                              url = _controllerURL.text;
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
              GestureDetector(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                        child: Text(
                          "Porta do Servidor",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.black,
                              ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Text(port),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  return showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Digite a Porta"),
                        content: TextField(
                            controller: _controllerPort,
                            keyboardType: TextInputType.number),
                        actions: <Widget>[
                          FlatButton(
                            child: Text("Cancelar"),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          FlatButton(
                            child: Text("Salvar"),
                            onPressed: () {
                              port = _controllerPort.text;
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(20),
                child: Text(
                  "Empresa",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color.fromRGBO(0, 173, 238, 1),
                  ),
                ),
              ),
              Divider(
                height: 5,
                indent: 20,
                endIndent: 20,
                thickness: 1.5,
              ),
              GestureDetector(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(left: 20, right: 20, top: 30),
                        child: Text(
                          "CNPJ da Empresa",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.black),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child:
                            Text(_cnpjUtil.formatarCNPJ(_controllerCNPJ.text)),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("CNPJ da Empresa"),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: <Widget>[
                              TextField(
                                maxLength: 14,
                                controller: _controllerCNPJ,
                                keyboardType: TextInputType.number,
                              ),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          FlatButton(
                            child: Text("Cancelar"),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          FlatButton(
                            child: Text("Salvar"),
                            onPressed: () {
                              this.cnpj =
                                  _cnpjUtil.formatarCNPJ(_controllerCNPJ.text);
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
              GestureDetector(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(left: 20, right: 20, top: 30),
                        child: Text(
                          "CPF do Responsavel:",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.black),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Text(_cpfUtil.formatarCPF(_controllerCPF.text)),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("CPF do Responsavel"),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: <Widget>[
                              TextField(
                                maxLength: 11,
                                controller: _controllerCPF,
                                keyboardType: TextInputType.number,
                              ),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          FlatButton(
                            child: Text("Cancelar"),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          FlatButton(
                            child: Text("Salvar"),
                            onPressed: () {
                              this.cpf =
                                  _cpfUtil.formatarCPF(_controllerCPF.text);
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
