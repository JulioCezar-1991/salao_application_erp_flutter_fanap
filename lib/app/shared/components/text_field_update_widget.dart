import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldUpdate extends StatelessWidget {
  final String initialValue;
  final int maxLength;
  final TextInputType keyboardType;
  final Function onChanged;
  final List<TextInputFormatter> inputFormatters;
  final String errorText;
  final int maxLines;

  const TextFieldUpdate({
    @required this.maxLength,
    @required this.keyboardType,
    @required this.onChanged,
    @required this.initialValue,
    @required this.errorText,
    this.inputFormatters,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: inputFormatters == null
          ? [LengthLimitingTextInputFormatter(maxLength)]
          : inputFormatters,
      keyboardType: keyboardType,
      maxLines: maxLines,
      decoration: InputDecoration(
        errorText: errorText,
        border: OutlineInputBorder(),
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
