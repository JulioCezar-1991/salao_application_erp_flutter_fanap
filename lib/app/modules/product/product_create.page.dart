import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:projeto_fanap/app/modules/product/product_controller.dart';
import 'package:projeto_fanap/app/shared/components/text_field_create_widget.dart';

class ProductCreatePage extends StatefulWidget {
  @override
  _ProductCreatePageState createState() => _ProductCreatePageState();
}

class _ProductCreatePageState extends State<ProductCreatePage> {
  final _productController = Modular.get<ProductController>();

  final formKey = GlobalKey<FormState>();

  final format = DateFormat("HH:mm");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.close,
          ),
          onPressed: () {
            Modular.to.pushReplacementNamed(
              '/home',
              arguments: 1,
            );
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
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Confirmar Cadastro do Produto"),
                      actions: <Widget>[
                        FlatButton(
                          child: Text(
                            "Salvar",
                            style:
                                TextStyle(color: Theme.of(context).accentColor),
                          ),
                          onPressed: () {
                            _productController.validateAll();
                            Modular.to.pushReplacementNamed(
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
        padding: EdgeInsets.all(20),
        child: Form(
          child: Column(
            children: <Widget>[
              Observer(
                builder: (_) {
                  return TextFieldCreate(
                    keyboardType: TextInputType.text,
                    maxLength: 38,
                    icon: Icon(
                      FontAwesomeIcons.cut,
                      size: 22,
                    ),
                    hintText: 'Digite o serviço',
                    labelText: 'Nome do serviço',
                    onChanged: (value) {
                      _productController.title = value;
                    },
                    errorText: _productController.error.title,
                  );
                },
              ),
              Observer(
                builder: (_) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: TextFieldCreate(
                      keyboardType: TextInputType.number,
                      maxLength: 5,
                      icon: Icon(
                        Icons.attach_money,
                        size: 26,
                      ),
                      hintText: 'Digite o valor',
                      labelText: 'Valor do produto',
                      onChanged: (value) {
                        _productController.price = value;
                      },
                      errorText: _productController.error.price,
                    ),
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
                        '            Tempo Médio Gasto',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 12),
                        textAlign: TextAlign.start,
                      ),
                      DateTimeField(
                        key: formKey,
                        initialValue: DateTime.now(),
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.hourglass_empty,
                            size: 26,
                          ),
                        ),
                        format: format,
                        onShowPicker: (context, currentValue) async {
                          final time = await showTimePicker(
                              context: context,
                              initialTime: TimeOfDay.fromDateTime(
                                  currentValue ?? DateTime.now()));
                          if (time != null) {
                            _productController.averagetime = time.toString();
                            print(time);
                          }
                          return DateTimeField.convert(time);
                        },
                      ),
                    ],
                  );
                },
              ),
              Observer(
                builder: (_) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: TextFieldCreate(
                      keyboardType: TextInputType.text,
                      maxLength: 67,
                      icon: Icon(
                        Icons.details,
                        size: 26,
                      ),
                      hintText: 'Detalhes do produto',
                      labelText: 'Observações',
                      onChanged: (value) {
                        _productController.description = value;
                      },
                      errorText: _productController.error.description,
                    ),
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
