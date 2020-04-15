import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projectfanap/src/bloc/servico.bloc.dart';
import 'package:projectfanap/src/components/text-field.widget.dart';
import 'package:projectfanap/src/models/servico-create.model.dart';
import 'package:projectfanap/src/route-generator.controller.dart';
import 'package:provider/provider.dart';

class ServicoCreatePage extends StatefulWidget {
  @override
  _ServicoCreatePageState createState() => _ServicoCreatePageState();
}

class _ServicoCreatePageState extends State<ServicoCreatePage> {
  final _formKey = GlobalKey<FormState>();
  final _scaffolkey = GlobalKey<ScaffoldState>();
  var servico = ServicoCreateModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffolkey,
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
                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                  createServico(context);
                }
              },
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              TextFormFieldCustom(
                keyboardType: TextInputType.text,
                icon: Icon(
                  FontAwesomeIcons.cut,
                  size: 20,
                ),
                labelText: 'Nome do Serviço',
                onSaved: (val) {
                  servico.title = val;
                },
                subLabelText: 'Campo Obrigatorio',
              ),
              TextFormFieldCustom(
                keyboardType: TextInputType.text,
                icon: Icon(Icons.attach_money),
                labelText: 'Valor do Serviço',
                onSaved: (val) {
                  servico.price = double.parse(val);
                },
                subLabelText: 'Campo Obrigatorio',
              ),
              TextFormFieldCustom(
                keyboardType: TextInputType.text,
                icon: Icon(Icons.access_time),
                labelText: 'Tempo Médio Gasto',
                onSaved: (val) {
                  servico.averagetime = val;
                },
                subLabelText: 'Campo Obrigatorio',
              ),
              TextFormFieldCustom(
                keyboardType: TextInputType.text,
                icon: Icon(Icons.category),
                labelText: 'Selecione uma categoria',
                onSaved: (val) {},
                subLabelText: 'Campo Obrigatorio',
              ),
            ],
          ),
        ),
      ),
    );
  }

  createServico(BuildContext context) async {
    var bloc = Provider.of<ServicoBloc>(context);
    var res = await bloc.servicoCreate(servico);

    if (res == null) {
      final snackBar = SnackBar(
        content: Text('Não foi possível realizar o cadastro'),
      );
      _scaffolkey.currentState.showSnackBar(snackBar);
    } else {
      return showDialog(
          context: context,
          child: AlertDialog(
            actions: <Widget>[
              Padding(
                padding: EdgeInsets.all(20),
                child: Center(
                  child: Text(
                    "Usuario Criado Com Sucesso",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              FlatButton(
                child: Text("OK"),
                onPressed: () {
                  Navigator.pushReplacementNamed(
                      context, RouteGeneratorController.ROUTE_HOME);
                },
              )
            ],
          ));
    }
  }
}
