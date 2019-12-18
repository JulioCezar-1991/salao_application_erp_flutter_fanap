import 'package:flutter/material.dart';

class CustomCicleButton extends MaterialButton {
  final dynamic label;
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;
  final double height;
  final double width;
  final Widget icon;
  final Function onTap;
  final Widget child;

  const CustomCicleButton(
      {Key key,
      this.child,
      this.label,
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
      key: key,
      borderRadius: BorderRadius.circular(8),
      child: Material(
        borderRadius: BorderRadius.circular(8),
        color: backgroundColor == null
            ? Theme.of(context).primaryColor
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
              child: child == null
                  ? Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[icon,SizedBox(width: 10,), Text(label)],
                    ))
                  : child),
        ),
      ),
    );
  }
}
