import 'package:flutter/material.dart';
import 'package:dropdown_formfield/dropdown_formfield.dart';
import 'package:projectfanap/src/route-generator.controller.dart';

class PermissionPage extends StatefulWidget {
  @override
  _PermissionPageState createState() => _PermissionPageState();
}

class _PermissionPageState extends State<PermissionPage> {

  String _myActivity;
  bool _estaSelecionado = false;


  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _myActivity = '';
  }

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
        title: Text("Permissões"),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 4),
            child: IconButton(
              icon: Icon(
                Icons.check,
                size: 30,
              ),
              onPressed: () {
                
              },
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            DropDownFormField(
              titleText: "Selecione uma Permissão",
              hintText: 'Por Favor Selecione Uma',
              value: _myActivity,
              onSaved: (value) {
                setState(() {
                  _myActivity = value;
                });
              },
              onChanged: (value) {
                setState(() {
                  _myActivity = value;
                });
              },
              dataSource: [
                {
                  "display": "Administrador",
                  "value": "Administrador",
                },
                {
                  "display": "Funcionario",
                  "value": "Funcionario",
                },
                {
                  "display": "Gerente",
                  "value": "Gerente",
                },
              ],
              textField: 'display',
              valueField: 'value',
            ),
            Container(
              padding: EdgeInsets.all(4),
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Card(
                      child: Container(
                        height: 100,
                        width: 600,
                        child: Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 12),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Checkbox(
                                          value: _estaSelecionado,
                                          onChanged: (bool valor) {
                                            setState(() {
                                              this._estaSelecionado = valor;
                                            });
                                          }),
                                      Text("Criar    "),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Checkbox(
                                          value: _estaSelecionado,
                                          onChanged: (bool valor) {
                                            setState(() {
                                              this._estaSelecionado = valor;
                                            });
                                          }),
                                      Text("Excluir"),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 12),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Checkbox(
                                          value: _estaSelecionado,
                                          onChanged: (bool valor) {
                                            setState(() {
                                              this._estaSelecionado = valor;
                                            });
                                          }),
                                      Text("Alterar     "),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Checkbox(
                                          value: _estaSelecionado,
                                          onChanged: (bool valor) {
                                            setState(() {
                                              this._estaSelecionado = valor;
                                            });
                                          }),
                                      Text("Visualizar"),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "   Modulo Cliente",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, letterSpacing: 1),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(4),
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Card(
                      child: Container(
                        height: 100,
                        width: 600,
                        child: Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 12),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Checkbox(
                                          value: _estaSelecionado,
                                          onChanged: (bool valor) {
                                            setState(() {
                                              this._estaSelecionado = valor;
                                            });
                                          }),
                                      Text("Criar    "),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Checkbox(
                                          value: _estaSelecionado,
                                          onChanged: (bool valor) {
                                            setState(() {
                                              this._estaSelecionado = valor;
                                            });
                                          }),
                                      Text("Excluir"),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 12),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Checkbox(
                                          value: _estaSelecionado,
                                          onChanged: (bool valor) {
                                            setState(() {
                                              this._estaSelecionado = valor;
                                            });
                                          }),
                                      Text("Alterar      "),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Checkbox(
                                          value: _estaSelecionado,
                                          onChanged: (bool valor) {
                                            setState(() {
                                              this._estaSelecionado = valor;
                                            });
                                          }),
                                      Text("Visualizar"),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "   Modulo Serviço",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, letterSpacing: 1),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(4),
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Card(
                      child: Container(
                        height: 100,
                        width: 600,
                        child: Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 12),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Checkbox(
                                          value: _estaSelecionado,
                                          onChanged: (bool valor) {
                                            setState(() {
                                              this._estaSelecionado = valor;
                                            });
                                          }),
                                      Text("Criar    "),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Checkbox(
                                          value: _estaSelecionado,
                                          onChanged: (bool valor) {
                                            setState(() {
                                              this._estaSelecionado = valor;
                                            });
                                          }),
                                      Text("Excluir"),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 12),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Checkbox(
                                          value: _estaSelecionado,
                                          onChanged: (bool valor) {
                                            setState(() {
                                              this._estaSelecionado = valor;
                                            });
                                          }),
                                      Text("Alterar     "),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Checkbox(
                                          value: _estaSelecionado,
                                          onChanged: (bool valor) {
                                            setState(() {
                                              this._estaSelecionado = valor;
                                            });
                                          }),
                                      Text("Visualizar"),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 12),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Checkbox(
                                          value: _estaSelecionado,
                                          onChanged: (bool valor) {
                                            setState(() {
                                              this._estaSelecionado = valor;
                                            });
                                          }),
                                      Text("Fechar"),
                                    ],
                                  ),
                                  
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "   Modulo Agendamento",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, letterSpacing: 1),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(4),
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Card(
                      child: Container(
                        height: 100,
                        width: 600,
                        child: Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 12),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Checkbox(
                                          value: _estaSelecionado,
                                          onChanged: (bool valor) {
                                            setState(() {
                                              this._estaSelecionado = valor;
                                            });
                                          }),
                                      Text("Criar    "),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Checkbox(
                                          value: _estaSelecionado,
                                          onChanged: (bool valor) {
                                            setState(() {
                                              this._estaSelecionado = valor;
                                            });
                                          }),
                                      Text("Excluir"),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 12),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Checkbox(
                                          value: _estaSelecionado,
                                          onChanged: (bool valor) {
                                            setState(() {
                                              this._estaSelecionado = valor;
                                            });
                                          }),
                                      Text("Alterar"),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Checkbox(
                                          value: _estaSelecionado,
                                          onChanged: (bool valor) {
                                            setState(() {
                                              this._estaSelecionado = valor;
                                            });
                                          }),
                                      Text("Fechar"),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "   Modulo Analise",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, letterSpacing: 1),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(4),
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Card(
                      child: Container(
                        height: 100,
                        width: 600,
                        child: Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 12),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Checkbox(
                                          value: _estaSelecionado,
                                          onChanged: (bool valor) {
                                            setState(() {
                                              this._estaSelecionado = valor;
                                            });
                                          }),
                                      Text("Configurações"),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Checkbox(
                                          value: _estaSelecionado,
                                          onChanged: (bool valor) {
                                            setState(() {
                                              this._estaSelecionado = valor;
                                            });
                                          }),
                                      Text("Permissões     "),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 12),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Checkbox(
                                          value: _estaSelecionado,
                                          onChanged: (bool valor) {
                                            setState(() {
                                              this._estaSelecionado = valor;
                                            });
                                          }),
                                      Text("Criar User      "),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Checkbox(
                                          value: _estaSelecionado,
                                          onChanged: (bool valor) {
                                            setState(() {
                                              this._estaSelecionado = valor;
                                            });
                                          }),
                                      Text("Compartilhar"),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "   Sistema",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, letterSpacing: 1),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
