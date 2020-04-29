import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldCustom extends StatelessWidget {
  final Icon icon;
  final String labelText;
  final String hintText;
  final int maxLength;
  final TextInputType keyboardType;
  final Function onChanged;
  final String errorText;
  final Function onTap;

  const TextFieldCustom({
    @required this.icon,
    @required this.labelText,
    @required this.hintText,
    this.maxLength,
    @required this.keyboardType,
    this.onChanged,
    this.errorText,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      inputFormatters: [LengthLimitingTextInputFormatter(maxLength)],
      keyboardType: keyboardType,
      cursorColor: Theme.of(context).accentColor,
      decoration: InputDecoration(
        errorText: errorText,
        hintText: hintText,
        hoverColor: Colors.red,
        focusColor: Colors.red,
        alignLabelWithHint: false,
        counterStyle: TextStyle(color: Colors.transparent),
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
      onChanged: onChanged,
      onTap: onTap,
    );
  }
}
