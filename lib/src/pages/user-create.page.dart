import 'package:flutter/material.dart';
import 'package:projectfanap/src/bloc/user.bloc.dart';
import 'package:projectfanap/src/components/text-field.widget.dart';
import 'package:projectfanap/src/models/user-create.model.dart';
import 'package:projectfanap/src/route-generator.controller.dart';
import 'package:provider/provider.dart';

class UserCreatePage extends StatefulWidget {
  @override
  _UserCreatePageState createState() => _UserCreatePageState();
}

class _UserCreatePageState extends State<UserCreatePage> {
  final _formKey = GlobalKey<FormState>();
  final _scaffolKey = GlobalKey<ScaffoldState>();
  var user = UserCreaterModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffolKey,
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
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                  createUser(context);
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
                icon: Icon(Icons.perm_identity),
                labelText: 'Nome Completo',
                onSaved: (val) {
                  user.nomeCompleto = val;
                },
                subLabelText: 'Campo Obrigatorio',
              ),
              TextFormFieldCustom(
                keyboardType: TextInputType.text,
                icon: Icon(
                  Icons.phone,
                ),
                labelText: 'Telefone',
                onSaved: (val) {
                  user.telefone = val;
                },
                subLabelText: 'Campo Obrigatorio',
              ),
              TextFormFieldCustom(
                keyboardType: TextInputType.text,
                icon: Icon(
                  Icons.alternate_email,
                ),
                labelText: 'E-Mail',
                onSaved: (val) {
                  user.email = val;
                },
                subLabelText: 'Campo Obrigatorio',
              ),
              TextFormFieldCustom(
                keyboardType: TextInputType.text,
                icon: Icon(
                  Icons.perm_identity,
                ),
                labelText: 'Usuário',
                onSaved: (val) {
                  user.login = val;
                },
                subLabelText: 'Campo Obrigatorio',
              ),
              TextFormFieldCustom(
                keyboardType: TextInputType.text,
                icon: Icon(
                  Icons.lock_open,
                ),
                labelText: 'Senha',
                onSaved: (val) {
                  user.password = val;
                },
                subLabelText: 'Campo Obrigatorio',
              ),
              TextFormFieldCustom(
                keyboardType: TextInputType.text,
                icon: Icon(
                  Icons.perm_contact_calendar,
                ),
                labelText: 'Selecione uma Permissão',
                onSaved: (val) {
                  user.permissaoCodigo = int.parse(val);
                },
                subLabelText: 'Campo Obrigatorio',
              ),
            ],
          ),
        ),
      ),
    );
  }

  createUser(BuildContext context) async {
    var bloc = Provider.of<UserBloc>(context);
    var res = await bloc.userCreate(user);

    if (res == null) {
      final snackBar = SnackBar(
        content: Text('Não foi possível realizar o cadastro'),
      );
      _scaffolKey.currentState.showSnackBar(snackBar);
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
