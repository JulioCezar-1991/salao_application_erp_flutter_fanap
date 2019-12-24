import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projectfanap/src/RouteGeneratorController.dart';
import 'package:projectfanap/src/bloc/user.bloc.dart';
import 'package:projectfanap/src/models/user-authenticate.model.dart';
import 'package:projectfanap/src/ui/shared/widgets/circle-button.widget.dart';
import 'package:provider/provider.dart';

class LoginSignInPage extends StatefulWidget {
  @override
  _LoginSignInPageState createState() => _LoginSignInPageState();
}

class _LoginSignInPageState extends State<LoginSignInPage> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  var login = "";
  var password = "";

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Scaffold(
      key: _scaffoldKey,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
            horizontal: _size.width / 14, vertical: _size.width / 14),
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
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Theme.of(context).backgroundColor,
                boxShadow: [
                  BoxShadow(
                      color: Theme.of(context).accentColor, blurRadius: 2),
                ],
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      keyboardType: TextInputType.text,
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
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Digite seu usuário';
                        }
                        return null;
                      },
                      onSaved: (val) {
                        login = val;
                      },
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                        enabled: true,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        icon: Icon(
                          Icons.lock_open,
                          color: Colors.white,
                          size: 28,
                        ),
                        hintText: "Senha",
                        hintStyle: TextStyle(
                          fontSize: 17.0,
                          color: Colors.grey,
                          letterSpacing: 2,
                        ),
                      ),
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Digite sua senha';
                        }
                        return null;
                      },
                      onSaved: (val) {
                        password = val;
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
                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                  authenticate(context);
                }
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

  void authenticate(BuildContext context) async {
    var bloc = Provider.of<UserBloc>(context);

    var user = await bloc.authenticate(
      UserAuthenticateModel(
        login: login,
        password: password,
      ),
    );

    if (user != null) {
      Navigator.pushReplacementNamed(
          context, RouteGeneratorController.ROUTE_HOME);
      return;
    }

    final snackBar = SnackBar(content: Text('Usuário ou senha invalidos'));
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }
}
