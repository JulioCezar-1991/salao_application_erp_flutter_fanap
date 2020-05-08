import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';
import 'package:projeto_fanap/app/modules/product/product_controller.dart';
import 'package:projeto_fanap/app/shared/components/text_field_update_widget.dart';
import 'package:projeto_fanap/app/shared/models/product_list_model.dart';

class ProductDetailsPage extends StatefulWidget {
  final ProductListModel item;

  const ProductDetailsPage({Key key, this.item}) : super(key: key);
  @override
  _ProductDetailsPageState createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  final _productController = Modular.get<ProductController>();

  Future<String> drop() async {
    return _productController.type.toString();
  }

  String dropdownValue = 'Tipo de Serviço';

  final formKey = GlobalKey<FormState>();
  final format = DateFormat("HH:mm");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Detalhes do Produto",
          style: TextStyle(fontSize: 18),
        ),
        actions: <Widget>[
          // Icone de Atualização //
          Padding(
            padding: EdgeInsets.only(right: 2),
            child: IconButton(
              icon: Icon(
                Icons.update,
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Confirmar Atualização do Produto"),
                      actions: <Widget>[
                        FlatButton(
                          child: Text(
                            "Confirmar",
                            style:
                                TextStyle(color: Theme.of(context).accentColor),
                          ),
                          onPressed: () {
                            try {
                              _productController.patchProduct(widget.item.sId);
                              _productController.fetchProduct();
                              Modular.to.popAndPushNamed(
                                '/home',
                              );
                            } catch (e) {}
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
          // Icone de Delete //
          Padding(
            padding: EdgeInsets.only(right: 2),
            child: IconButton(
              icon: Icon(
                Icons.delete_outline,
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Confirmar Exclusão do Produto"),
                      actions: <Widget>[
                        FlatButton(
                          child: Text(
                            "Confirmar",
                            style:
                                TextStyle(color: Theme.of(context).accentColor),
                          ),
                          onPressed: () {
                            try {
                              _productController.deleteProduct();
                              _productController.fetchProduct();
                              Modular.to.popAndPushNamed(
                                '/home',
                              );
                            } catch (e) {}
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
            Observer(
              builder: (_) {
                return TextFieldUpdate(
                  keyboardType: TextInputType.text,
                  initialValue: widget.item.title,
                  labelText: 'Titulo',
                  onChanged: (value) {
                    _productController.title = value;
                  },
                  errorText: _productController.error.title,
                  maxLength: 38,
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            Observer(
              builder: (_) {
                return TextFieldUpdate(
                  keyboardType: TextInputType.text,
                  initialValue: widget.item.price.toString(),
                  labelText: 'Valor',
                  onChanged: (value) {
                    _productController.price = value;
                  },
                  errorText: _productController.error.price,
                  maxLength: 11,
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            // Data de Aniversario
            Observer(
              builder: (_) {
                return DateTimeField(
                  key: formKey,
                  initialValue: DateTime.now(),
                  decoration: InputDecoration(
                    labelText: "Tempo Médio Gasto",
                    labelStyle:
                        TextStyle(color: Theme.of(context).primaryColor),
                    border: OutlineInputBorder(),
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
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(8),
              decoration: new BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(4),
                shape: BoxShape.rectangle,
              ),
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
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String newValue) {
                  _productController.type = newValue;
                  setState(() {
                    dropdownValue = newValue;
                  });
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Observer(
              builder: (_) {
                return TextFieldUpdate(
                  keyboardType: TextInputType.text,
                  initialValue: widget.item.description,
                  labelText: 'Observação',
                  onChanged: (value) {
                    _productController.description = value;
                  },
                  errorText: _productController.error.description,
                  maxLength: 32,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
