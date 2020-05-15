import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldUpdate extends StatelessWidget {
  final String labelText;
  final String initialValue;
  final int maxLength;
  final TextInputType keyboardType;
  final Function onChanged;
  final List<TextInputFormatter> inputFormatters;
  final String errorText;

  const TextFieldUpdate({
    @required this.maxLength,
    @required this.keyboardType,
    @required this.onChanged,
    @required this.initialValue,
    @required this.labelText,
    @required this.errorText,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: inputFormatters == null
          ? [LengthLimitingTextInputFormatter(maxLength)]
          : inputFormatters,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        errorText: errorText,
        border: OutlineInputBorder(),
        labelText: labelText,
        labelStyle: TextStyle(
          color: Theme.of(context).primaryColor,
        ),
      ),
      initialValue: initialValue,
      onChanged: onChanged,
      style: TextStyle(
        fontSize: 18,
        color: Colors.black,
      ),
      //Controlador de entada de dado
    );
  }
}
