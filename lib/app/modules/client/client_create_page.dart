import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:projeto_fanap/app/modules/client/client_controller.dart';
import 'package:projeto_fanap/app/shared/components/text_field_create_widget.dart';

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

    var maskCpfFormatter = MaskTextInputFormatter(
        mask: "###.###.###-##", filter: {"#": RegExp(r'[0-9]')});

    var maskTelFixFormatter = MaskTextInputFormatter(
        mask: "(##) ####-####", filter: {"#": RegExp(r'[0-9]')});

    var maskTelCelFormatter = MaskTextInputFormatter(
        mask: "(##) #####-####", filter: {"#": RegExp(r'[0-9]')});

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cadastrar Novo Cliente",
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 4),
            child: IconButton(
              icon: Icon(
                Icons.check,
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Confirmar Cadastro do Cliente"),
                      actions: <Widget>[
                        FlatButton(
                          child: Text(
                            "Salvar",
                            style:
                                TextStyle(color: Theme.of(context).accentColor),
                          ),
                          onPressed: () {
                            _clientController.validateCreateAll();
                            _clientController.fetchClient();
                            Modular.to.popAndPushNamed(
                              '/home',
                            );
                          },
                        ),
                        FlatButton(
                          child: Text(
                            "Cancelar",
                            style:
                                TextStyle(color: Theme.of(context).accentColor),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 12, left: 20, bottom: 6, right: 20),
        child: Column(
          children: <Widget>[
            TextFieldCreate(
              keyboardType: TextInputType.text,
              maxLength: 38,
              icon: Icon(
                Icons.perm_identity,
              ),
              hintText: 'Digite o nome',
              labelText: 'Nome Completo',
              onChanged: (value) {
                _clientController.name = value;
              },
              errorText: _clientController.error.name,
            ),
            TextFieldCreate(
              inputFormatters: [maskCpfFormatter],
              keyboardType: TextInputType.number,
              maxLength: 11,
              icon: Icon(
                Icons.perm_identity,
              ),
              hintText: 'Digite seu CPF',
              labelText: 'CPF',
              onChanged: (value) {
                _clientController.cpf = value;
              },
              errorText: _clientController.error.cpf,
            ),
            SizedBox(
              height: 5,
            ),
            DateTimeField(
              key: formKey,
              initialValue: DateTime.now(),
              decoration: InputDecoration(
                icon: Icon(Icons.calendar_today),
                labelText: "Data de anivesário",
                labelStyle: TextStyle(color: Theme.of(context).accentColor),
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
                }
                return date;
              },
            ),
            TextFieldCreate(
              keyboardType: TextInputType.emailAddress,
              maxLength: 32,
              icon: Icon(
                Icons.email,
              ),
              hintText: 'Digite o E-mail',
              labelText: 'E-mail',
              onChanged: (value) {
                _clientController.email = value;
              },
              errorText: _clientController.error.email,
            ),
            TextFieldCreate(
              inputFormatters: [maskTelCelFormatter],
              keyboardType: TextInputType.phone,
              maxLength: 12,
              icon: Icon(
                Icons.smartphone,
              ),
              hintText: 'Digite o número móvel',
              labelText: 'Telefone Celular',
              onChanged: (value) {
                _clientController.telcel = value;
              },
              errorText: _clientController.error.telcel,
            ),
            TextFieldCreate(
              inputFormatters: [maskTelFixFormatter],
              keyboardType: TextInputType.phone,
              maxLength: 12,
              icon: Icon(
                Icons.phone,
              ),
              hintText: 'Digite o telefone fixo',
              labelText: 'Telefone Fixo',
              onChanged: (value) {
                _clientController.telfix = value;
              },
              errorText: _clientController.error.telfix,
            ),
            Observer(
              builder: (_) {
                return TextFieldCreate(
                  keyboardType: TextInputType.text,
                  maxLength: 38,
                  icon: Icon(Icons.home),
                  hintText: 'Digite o endereço',
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
                return TextFieldCreate(
                  keyboardType: TextInputType.text,
                  maxLength: 28,
                  icon: Icon(FontAwesomeIcons.streetView),
                  hintText: 'Digite o bairro',
                  labelText: 'Bairro',
                  onChanged: (value) {
                    _clientController.sector = value;
                  },
                  errorText: _clientController.error.sector,
                );
              },
            ),
            Observer(
              builder: (_) {
                return TextFieldCreate(
                  keyboardType: TextInputType.text,
                  maxLength: 28,
                  icon: Icon(
                    Icons.location_city,
                  ),
                  hintText: 'Digite a cidade',
                  labelText: 'Cidade',
                  onChanged: (value) {
                    _clientController.city = value;
                  },
                  errorText: _clientController.error.city,
                );
              },
            ),
            Observer(
              builder: (_) {
                return TextFieldCreate(
                  icon: Icon(
                    FontAwesomeIcons.mapMarkedAlt,
                  ),
                  hintText: 'Digite o estado',
                  labelText: 'Estado',
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
