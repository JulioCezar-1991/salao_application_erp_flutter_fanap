import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:projeto_fanap/app/page/client/client_controller.dart';
import 'package:projeto_fanap/app/shared/components/text-field.widget.dart';

class ClientCreatePage extends StatefulWidget {
  @override
  _ClientCreatePageState createState() => _ClientCreatePageState();
}

class _ClientCreatePageState extends State<ClientCreatePage> {
  @override
  Widget build(BuildContext context) {
    final _clientController = Modular.get<ClientController>();

    final formKey = GlobalKey<FormState>();

    final format = DateFormat("dd/MM/yyyy");

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.close,
          ),
          onPressed: () {
            Modular.to.pushReplacementNamed(
              '/home',
            );
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
                _clientController.validateAll();
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 12, left: 20, bottom: 6, right: 20),
        child: Column(
          children: <Widget>[
            Observer(
              builder: (_) {
                return TextFieldCustom(
                  keyboardType: TextInputType.text,
                  maxLength: 38,
                  icon: Icon(
                    Icons.perm_identity,
                  ),
                  hintText: 'Nome Completo',
                  labelText: 'Digite seu nome',
                  onChanged: (value) {
                    _clientController.name = value;
                  },
                  errorText: _clientController.error.name,
                );
              },
            ),
            Observer(
              builder: (_) {
                return TextFieldCustom(
                  keyboardType: TextInputType.text,
                  maxLength: 14,
                  icon: Icon(
                    Icons.perm_identity,
                  ),
                  hintText: 'CPF',
                  labelText: 'Digite seu CPF',
                  onChanged: (value) {
                    _clientController.cpf = value;
                  },
                  errorText: _clientController.error.cpf,
                );
              },
            ),
            Observer(
              builder: (_) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      '           Data de anivesário',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor, fontSize: 12),
                      textAlign: TextAlign.start,
                    ),
                    DateTimeField(
                      key: formKey,
                      initialValue: DateTime.now(),
                      decoration: InputDecoration(
                        icon: Icon(Icons.calendar_today),
                      ),
                      format: format,
                      onShowPicker: (context, currentValue) async {
                        final date = await showDatePicker(
                            context: context,
                            firstDate: DateTime(1900),
                            initialDate: currentValue ?? DateTime.now(),
                            lastDate: DateTime(2100));
                        if (date != null) {
                          _clientController.date = date.toString();
                          print(date);
                        }
                        return date;
                      },
                    ),
                  ],
                );
              },
            ),
            Observer(
              builder: (_) {
                return TextFieldCustom(
                  keyboardType: TextInputType.text,
                  maxLength: 38,
                  icon: Icon(
                    Icons.email,
                  ),
                  hintText: 'Digite seu E-mail',
                  labelText: 'E-mail',
                  onChanged: (value) {
                    _clientController.email = value;
                  },
                  errorText: _clientController.error.email,
                );
              },
            ),
            Observer(
              builder: (_) {
                return TextFieldCustom(
                  keyboardType: TextInputType.text,
                  maxLength: 38,
                  icon: Icon(
                    Icons.smartphone,
                  ),
                  hintText: 'Digite seu número móvel',
                  labelText: 'Telefone Celular',
                  onChanged: (value) {
                    _clientController.telcel = value;
                  },
                  errorText: _clientController.error.telcel,
                );
              },
            ),
            Observer(
              builder: (_) {
                return TextFieldCustom(
                  keyboardType: TextInputType.text,
                  maxLength: 38,
                  icon: Icon(
                    Icons.phone,
                  ),
                  hintText: 'Digite seu telefone fixo',
                  labelText: 'Telefone Fixo',
                  onChanged: (value) {
                    _clientController.telfix = value;
                  },
                  errorText: _clientController.error.telfix,
                );
              },
            ),
            Observer(
              builder: (_) {
                return TextFieldCustom(
                  keyboardType: TextInputType.text,
                  maxLength: 38,
                  icon: Icon(Icons.home),
                  hintText: 'Digite seu endereço',
                  labelText: 'Endereço',
                  onChanged: (value) {
                    _clientController.address = value;
                  },
                  errorText: _clientController.error.address,
                );
              },
            ),
            Observer(
              builder: (_) {
                return TextFieldCustom(
                  keyboardType: TextInputType.text,
                  maxLength: 38,
                  icon: Icon(FontAwesomeIcons.streetView),
                  labelText: 'Bairro',
                  hintText: 'Digite o bairro',
                  onChanged: (value) {
                    _clientController.sector = value;
                  },
                  errorText: _clientController.error.sector,
                );
              },
            ),
            Observer(
              builder: (_) {
                return TextFieldCustom(
                  icon: Icon(
                    Icons.location_city,
                  ),
                  labelText: 'Cidade',
                  hintText: 'Digite a cidade',
                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    _clientController.city = value;
                  },
                  errorText: _clientController.error.city,
                );
              },
            ),
            Observer(
              builder: (_) {
                return TextFieldCustom(
                  icon: Icon(
                    FontAwesomeIcons.mapMarkedAlt,
                  ),
                  labelText: 'Estado',
                  hintText: 'Digite o estado',
                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    _clientController.state = value;
                  },
                  errorText: _clientController.error.state,
                );
              },
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
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
 
}*/

/* Padding(
                  padding: const EdgeInsets.only(top: 18, bottom: 0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Icon(Icons.calendar_today),
                      ),
                      Expanded(
                        child: RaisedButton(
                          colorBrightness: Brightness.light,
                          elevation: 5,
                          color: Theme.of(context).primaryColor,
                          onPressed: () =>
                              _clientController.selectDate(context),
                          child: Text(
                            'Nascimento:  ${_clientController.dateForm}                        ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ); */
