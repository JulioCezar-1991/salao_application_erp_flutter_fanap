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

  String dropdownValue = 'Tipo de Serviço';

  final formKey = GlobalKey<FormState>();

  final format = DateFormat("HH:mm");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cadastrar Novo Serviço",
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
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(right: 16),
                  child: Icon(
                    Icons.description,
                    color: Colors.grey,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 50,
                    child: DropdownButton(
                      value: dropdownValue,
                      isExpanded: true,
                      icon: Icon(
                        Icons.arrow_downward,
                        color: Theme.of(context).primaryColor,
                      ),
                      iconSize: 24,
                      elevation: 16,
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                      ),
                      underline: Container(
                        height: 2,
                        color: Theme.of(context).primaryColor,
                      ),
                      items: _productController.listType
                          .map<DropdownMenuItem<String>>(
                        (String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        },
                      ).toList(),
                      onChanged: (String newValue) {
                        _productController.type = newValue;
                        setState(
                          () {
                            dropdownValue = newValue;
                          },
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Observer(
              builder: (_) {
                return Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(right: 16),
                      child: Icon(
                        Icons.timer,
                        color: Colors.grey,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: DateTimeField(
                          key: formKey,
                          initialValue: DateTime.now(),
                          decoration: InputDecoration(
                            labelText: "Tempo Médio Gasto",
                            labelStyle: TextStyle(
                                color: Theme.of(context).primaryColor),
                          ),
                          format: format,
                          onShowPicker: (context, currentValue) async {
                            final time = await showTimePicker(
                              context: context,
                              initialTime: TimeOfDay.fromDateTime(
                                currentValue ?? DateTime.now(),
                              ),
                            );
                            if (time != null) {
                              _productController.averagetime = time.toString();
                              print(time);
                            }
                            return DateTimeField.convert(time);
                          },
                        ),
                      ),
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
    );
  }
}
