import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projectfanap/src/controller/RouteGeneratorController.dart';
import 'package:projectfanap/src/service/UserService.dart';
import 'package:projectfanap/src/widgets/CustomCircleButton.dart';

class LoginSignInScreen extends StatefulWidget {
  @override
  _LoginSignInScreenState createState() => _LoginSignInScreenState();
}

class _LoginSignInScreenState extends State<LoginSignInScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController _controllerLogin = TextEditingController();
  TextEditingController _controllerPassword = TextEditingController();

  UserService _userService = UserService();
  int _state = 0;

  _cleanField() {
    _controllerLogin.clear();
    _controllerPassword.clear();
  }

  _setUpButtonChild() {
    if (_state == 0) {
      return Text(
        "ENTRAR",
        style: const TextStyle(
            color: Colors.white, fontSize: 16.0, letterSpacing: 2),
      );
    } else if (_state == 1) {
      return CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
      );
    } else {
      return Text(
        "ENTRAR",
        style: const TextStyle(
            color: Colors.white, fontSize: 16.0, letterSpacing: 2),
      );
    }
  }

  _validaForm() async {
    if (_controllerLogin.text == "") {
      final snackbar = SnackBar(
        content: Text("Digite o seu Usuário"),
        duration: Duration(seconds: 3),
      );
      _scaffoldKey.currentState.showSnackBar(snackbar);
    } else if (_controllerPassword.text == "") {
      final snackbar = SnackBar(
        content: Text("Digite a sua Senha"),
        duration: Duration(seconds: 3),
      );
      _scaffoldKey.currentState.showSnackBar(snackbar);
    } else {
      return _animateButton();
    }
  }

  void _animateButton() {
    _login();
    setState(() {
      _state = 1;
    });
    Timer(Duration(seconds: 3), () {
      setState(() {
        _state = 2;
      });
    });
  }

  _login() async {
    var entregador = await _userService.isLoginPost(
        _controllerLogin.text, _controllerPassword.text);

    if (entregador > 0) {
      _cleanField();
      return Navigator.pushNamedAndRemoveUntil(context,
          RouteGeneratorController.ROUTE_HOME, (Route<dynamic> route) => false);
    } else {
      _cleanField();
      final snackbar = SnackBar(
        content: Text("Login ou Senha Inválida!"),
        duration: Duration(seconds: 3),
      );
      _scaffoldKey.currentState.showSnackBar(snackbar);
    }
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Scaffold(
      key: _scaffoldKey,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
            horizontal: _size.width / 14, vertical: _size.width / 14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                  top: _size.width / 25, bottom: _size.width / 50),
              width: _size.width / 2.5,
              child: Image.asset("assets/logo.png"),
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Theme.of(context).primaryColor,
                boxShadow: [
                  BoxShadow(
                      color: Theme.of(context).accentColor, blurRadius: 2),
                ],
              ),
              child: Column(
                children: <Widget>[
                  TextField(
                    cursorColor: Colors.white,
                    maxLength: 15,
                    decoration: InputDecoration(
                      enabled: true,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      icon: Icon(
                        Icons.perm_identity,
                        color: Colors.white,
                        size: 28,
                      ),
                      hintText: "Usuário",
                      hintStyle: TextStyle(
                        fontSize: 17.0,
                        color: Colors.grey,
                        letterSpacing: 2,
                      ),
                    ),
                    controller: _controllerLogin,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    maxLength: 8,
                    obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      disabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      fillColor: Colors.white,
                      labelStyle: TextStyle(color: Colors.white),
                      icon: Icon(
                        Icons.lock_outline,
                        color: Colors.white,
                        size: 28,
                      ),
                      hintText: "Password",
                      hintStyle: TextStyle(
                        fontSize: 17.0,
                        color: Colors.grey,
                        letterSpacing: 2,
                      ),
                    ),
                    controller: _controllerPassword,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Padding(
              padding: EdgeInsets.only(top: _size.width * 0.1),
              child: Container(
                child: CustomCicleButton(
                  child: _setUpButtonChild(),
                  onTap: () {
                    _validaForm();
                  },
                ),
              ),
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
                    child: CustomCicleButton(
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
                    child: CustomCicleButton(
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
}
