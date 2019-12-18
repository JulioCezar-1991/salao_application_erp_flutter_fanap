import 'package:flutter/material.dart';
import 'package:projectfanap/src/controller/RouteGeneratorController.dart';
import 'package:dropdown_formfield/dropdown_formfield.dart';

class PermissionScreen extends StatefulWidget {
  @override
  _PermissionScreenState createState() => _PermissionScreenState();
}

class _PermissionScreenState extends State<PermissionScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

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
                print(_myActivity);
                /*  return showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: Text("Salvar Dados"),
                    content: Text(
                      "Salvar Permissões?",
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
                ); */
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
