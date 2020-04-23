import 'package:flutter/material.dart';

class CircleButtonWidget extends StatelessWidget {
  final dynamic label;
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;
  final double height;
  final double width;
  final Widget icon;
  final Function onTap;

  const CircleButtonWidget(
      {@required this.label,
      this.backgroundColor,
      this.textColor = Colors.white,
      this.borderColor,
      this.height = 55,
      this.width,
      this.icon,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Material(
        borderRadius: BorderRadius.circular(8),
        color: backgroundColor == null
            ? Theme.of(context).backgroundColor
            : backgroundColor,
        child: InkWell(
          onTap: onTap,
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border:
                  borderColor == null ? null : Border.all(color: borderColor),
            ),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: icon,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  label,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
