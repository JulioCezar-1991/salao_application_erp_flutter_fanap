import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';
import 'package:projeto_fanap/app/modules/product/product_controller.dart';
import 'package:projeto_fanap/app/shared/components/text_field_widget.dart';

class ProductCreatePage extends StatefulWidget {
  @override
  _ProductCreatePageState createState() => _ProductCreatePageState();
}

class _ProductCreatePageState extends State<ProductCreatePage> {
  final _productController = Modular.get<ProductController>();

  final formKey = GlobalKey<FormState>();

  final format = DateFormat("dd/MM/yyyy");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.close,
          ),
          onPressed: () {
            //Router Voltar para home
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
              onPressed: () {},
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
                  return TextFieldCustom(
                    keyboardType: TextInputType.text,
                    maxLength: 38,
                    icon: Icon(
                      Icons.perm_identity,
                    ),
                    hintText: 'Nome do Serviço',
                    labelText: 'Digite o Serviço',
                    onChanged: (value) {
                      _productController.name = value;
                    },
                    errorText: _productController.error.name,
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
                    hintText: 'Detalhes do produto',
                    labelText: 'Maiores informações',
                    onChanged: (value) {
                      _productController.description = value;
                    },
                    errorText: _productController.error.description,
                  );
                },
              ),
              Observer(
                builder: (_) {
                  return TextFieldCustom(
                    keyboardType: TextInputType.number,
                    maxLength: 14,
                    icon: Icon(
                      Icons.perm_identity,
                    ),
                    hintText: 'Valor do produto',
                    labelText: 'Digite o valor',
                    onChanged: (value) {
                      _productController.price = value;
                    },
                    errorText: _productController.error.price,
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
                        '           Tempo Médio Gasto',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 12),
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
                            _productController.averagetime = date.toString();
                            print(date);
                          }
                          return date;
                        },
                      ),
                    ],
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
