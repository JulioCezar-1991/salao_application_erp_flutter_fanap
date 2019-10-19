import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  

  final controllerForm;
  final String label;
  final String hint;
  final bool obscureText;

  const CustomTextField(
      {Key key,
      this.label = "",
      this.hint = "",
      this.obscureText = false,
      this.controllerForm})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            label,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15),
          ),
          Container(
            height: 5,
          ),
          TextField(
              autofocus: false,
              obscureText: obscureText,
              controller: controllerForm,
              decoration: InputDecoration(
                hintText: hint,
                focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Theme.of(context).accentColor)),
                disabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Theme.of(context).accentColor)),
                enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Theme.of(context).accentColor)),
              )),
        ],
      ),
    );
  }
}
