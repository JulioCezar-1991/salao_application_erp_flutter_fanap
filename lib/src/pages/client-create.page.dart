import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projectfanap/src/components/text-field.widget.dart';
import 'package:projectfanap/src/models/client-create.model.dart';
import 'package:projectfanap/src/route-generator.controller.dart';

class ClientCreatePage extends StatefulWidget {
  @override
  _ClientCreatePageState createState() => _ClientCreatePageState();
}

class _ClientCreatePageState extends State<ClientCreatePage> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  var client = ClientCreateModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
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
          "Criar Usuário",
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 4),
            child: IconButton(
              icon: Icon(
                Icons.check,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(top: 12, left: 20, bottom: 12, right: 20),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              TextFormFieldCustom(
                icon: Icon(
                  Icons.perm_identity,
                ),
                labelText: 'Nome Completo',
                subLabelText: 'Campo obrigatorio',
                onSaved: (val) {
                  /* client.nomeCompleto = val; */
                },
              ),
              TextFormFieldCustom(
                keyboardType: TextInputType.text,
                icon: Icon(Icons.perm_identity),
                labelText: 'CPF',
                subLabelText: 'Campo Obrigatorio',
                onSaved: (val) {
                  /* client.nomeCompleto = val; */
                },
              ),
              TextFormFieldCustom(
                keyboardType: TextInputType.text,
                icon: Icon(Icons.calendar_today),
                labelText: 'Data Nascimento',
                subLabelText: 'Campo Obrigatorio',
                onSaved: (val) {
                  /* client.nomeCompleto = val; */
                },
              ),
              TextFormFieldCustom(
                keyboardType: TextInputType.text,
                icon: Icon(Icons.smartphone),
                labelText: 'Telefone Celular',
                subLabelText: 'Campo Obrigatorio',
                onSaved: (val) {
                  /* client.nomeCompleto = val; */
                },
              ),
              TextFormFieldCustom(
                keyboardType: TextInputType.text,
                icon: Icon(Icons.phone),
                labelText: 'Telefone Fixo',
                subLabelText: 'Campo Obrigatorio',
                onSaved: (val) {
                  /* client.nomeCompleto = val; */
                },
              ),
              TextFormFieldCustom(
                keyboardType: TextInputType.text,
                icon: Icon(Icons.email),
                labelText: 'E-Mail',
                subLabelText: 'Campo Obrigatorio',
                onSaved: (val) {
                  /* client.nomeCompleto = val; */
                },
              ),
              TextFormFieldCustom(
                keyboardType: TextInputType.text,
                icon: Icon(Icons.home),
                labelText: 'Endereço',
                subLabelText: 'Campo Obrigatorio',
                onSaved: (val) {
                  /* client.nomeCompleto = val; */
                },
              ),
              TextFormFieldCustom(
                keyboardType: TextInputType.text,
                icon: Icon(
                  FontAwesomeIcons.streetView,
                ),
                labelText: 'Bairro',
                subLabelText: 'Campo Obrigatorio',
                onSaved: (val) {
                  /* client.nomeCompleto = val; */
                },
              ),
              TextFormFieldCustom(
                keyboardType: TextInputType.text,
                icon: Icon(
                  Icons.location_city,
                ),
                labelText: 'Cidade',
                subLabelText: 'Campo Obrigatorio',
                onSaved: (val) {
                  /* client.nomeCompleto = val; */
                },
              ),
              TextFormFieldCustom(
                keyboardType: TextInputType.text,
                icon: Icon(
                  FontAwesomeIcons.mapMarkedAlt,
                ),
                labelText: 'Estado',
                subLabelText: 'Campo Obrigatorio',
                onSaved: (val) {
                  /* client.nomeCompleto = val; */
                },
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }

  /* createClient(BuildContext context) async {
    var bloc = Provider.of<ClientBloc>(context);
    var res = await bloc.createClient(client);

    if (res == null) {
      final snackBar = SnackBar(
        content: Text('Não foi possível realizar o cadastro'),
      );
      _scaffoldKey.currentState.showSnackBar(snackBar);
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
        ),
      );
    }
  }
}
 */
}
