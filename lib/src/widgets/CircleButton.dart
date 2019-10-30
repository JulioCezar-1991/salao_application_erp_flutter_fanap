import 'package:flutter/material.dart';

class CicleButton extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color textColor;
  final Color colorGradient;
  final Color borderColor;
  final bool gradientColor;
  final double height;
  final double width;
  final Widget icon;
  final Function onTap;

  const CicleButton(
      {Key key,
      this.label = "",
      this.backgroundColor,
      this.textColor = Colors.white,
      this.borderColor,
      this.height = 55,
      this.width,
      this.icon,
      this.onTap,
      this.gradientColor,
      this.colorGradient})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: gradientColor == false
                    ? [colorGradient, colorGradient]
                    : [
                        Color.fromRGBO(56, 32, 52, 1.0),
                        Color.fromRGBO(92, 42, 100, 1.0)
                      ]),
          ),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: icon == null ? null : icon,
              ),
              Text(
                label,
                style: TextStyle(
                  color: textColor == null ? Colors.white : textColor,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
