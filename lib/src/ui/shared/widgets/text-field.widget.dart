import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormFieldCustom extends StatelessWidget {
  final Icon icon;
  final String labelText;
  final String subLabelText;
  final String inputValue;
  final TextInputType keyboardType;
  final FormFieldSetter<String> onSaved;

  const TextFormFieldCustom({
    Key key,
    @required this.icon,
    @required this.labelText,
    @required this.subLabelText,
    @required this.onSaved,
    this.inputValue,
    this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.text,
      cursorColor: Theme.of(context).accentColor,
      decoration: InputDecoration(
        hoverColor: Colors.red,
        focusColor: Colors.red,
        alignLabelWithHint: false,
        counterStyle: TextStyle(
          color: Colors.red
          
        ),
        
        icon: icon,
        labelText: labelText,
        labelStyle: TextStyle(
          color: Theme.of(context).accentColor,
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
      ),
      style: TextStyle(
        fontSize: 20,
        color: Colors.black,
      ),
      validator: (value) {
        if (value.isEmpty) {
          return subLabelText;
        }
        return null;
      },
      onSaved: onSaved,
    );
  }
}
