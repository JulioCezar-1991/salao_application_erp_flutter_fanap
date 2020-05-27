import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldCreate extends StatelessWidget {
  final List<TextInputFormatter> inputFormatters;
  final Icon icon;
  final String labelText;
  final String hintText;
  final int maxLength;
  final TextInputType keyboardType;
  final Function onChanged;
  final String errorText;
  final int maxLines;

  const TextFieldCreate({
    @required this.icon,
    @required this.labelText,
    @required this.hintText,
    this.maxLength,
    @required this.keyboardType,
    this.onChanged,
    this.errorText,
    this.inputFormatters,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      inputFormatters: inputFormatters == null
          ? [LengthLimitingTextInputFormatter(maxLength)]
          : inputFormatters,
      keyboardType: keyboardType,
      maxLines: maxLines,
      decoration: InputDecoration(
        errorText: errorText,
        hintText: hintText,
        hoverColor: Colors.red,
        icon: icon,
        labelText: labelText,
        labelStyle: TextStyle(
          color: Theme.of(context).accentColor,
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
      ),
      style: TextStyle(
        fontSize: 18,
        color: Colors.black,
      ),
      onChanged: onChanged,
    );
  }
}
