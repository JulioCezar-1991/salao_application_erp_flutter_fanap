import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projeto_fanap/app/modules/login/login_controller.dart';
import 'package:projeto_fanap/app/shared/components/circle_button_widget.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    final _loginrController = Modular.get<LoginController>();

    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
            horizontal: _size.width / 20, vertical: _size.width / 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                  top: _size.width / 25, bottom: _size.width / 50),
              width: _size.width / 2.5,
              child: Image.asset("assets/logo.png"),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Theme.of(context).backgroundColor,
                boxShadow: [
                  BoxShadow(
                      color: Theme.of(context).accentColor, blurRadius: 2),
                ],
              ),
              child: Form(
                child: Column(
                  children: <Widget>[
                    Observer(
                      builder: (_) {
                        return _textFild(
                            icon: Icons.person,
                            onChanged: (value) =>
                                _loginrController.email = value,
                            errorText: _loginrController.error.email,
                            context: context,
                            hintText: 'E-Mail',
                            labelText: 'Digite o Email');
                      },
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Observer(
                      builder: (_) {
                        return _textFild(
                            obscureText: true,
                            icon: Icons.lock_outline,
                            onChanged: (value) =>
                                _loginrController.password = value,
                            errorText: _loginrController.error.password,
                            context: context,
                            hintText: 'Senha',
                            labelText: 'Digite a Senha');
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            CircleButtonWidget(
              textColor: Colors.white,
              icon: null,
              height: 50,
              label: "ENTRAR",
              onTap: () {
                _loginrController.validateAll();
              },
            ),
            Padding(
              padding: EdgeInsets.only(top: _size.width * 0.12),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Divider(
                    color: Colors.black,
                    height: 15,
                  )),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "NOSSAS REDES",
                      style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.black,
                      height: _size.height / 40,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: _size.width * 0.08),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: CircleButtonWidget(
                      height: 45,
                      backgroundColor: Colors.blue,
                      icon: Icon(
                        FontAwesomeIcons.facebookF,
                        color: Colors.white,
                        size: 18,
                      ),
                      label: "FACEBOOK",
                      onTap: () {},
                    ),
                  ),
                  Container(
                    width: 20,
                  ),
                  Expanded(
                    child: CircleButtonWidget(
                      height: 45,
                      backgroundColor: Colors.red[700],
                      icon: Icon(
                        FontAwesomeIcons.google,
                        color: Colors.white,
                        size: 18,
                      ),
                      label: "GOOGLE",
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _textFild(
      {@required icon,
      @required context,
      @required labelText,
      @required hintText,
      bool obscureText = false,
      Function onChanged,
      errorText}) {
    return TextField(
      obscureText: obscureText,
      onChanged: onChanged,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        fillColor: Colors.white,
        enabled: true,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        icon: Icon(
          icon,
          color: Colors.white,
          size: 26,
        ),
        labelText: labelText,
        labelStyle: TextStyle(color: Colors.white, fontSize: 15),
        hintText: hintText,
        hintMaxLines: 20,
        errorText: errorText,
        hintStyle: TextStyle(
          fontSize: 17.0,
          color: Colors.grey,
          letterSpacing: 2,
          decoration: TextDecoration.none,
        ),
      ),
      style: TextStyle(
        fontSize: 20,
        color: Colors.white,
      ),
    );
  }
}
