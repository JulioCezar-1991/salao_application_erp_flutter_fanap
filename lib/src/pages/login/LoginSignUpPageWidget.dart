/* import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:yapp_sistema_bloc/src/model/LoginSignUpModel.dart';
import 'package:yapp_sistema_bloc/src/service/ClientService.dart';
import 'package:yapp_sistema_bloc/src/widgets/CircleButton.dart';
import 'package:yapp_sistema_bloc/src/widgets/CustomTextField.dart';

class LoginSignUpPage extends StatefulWidget {
  @override
  _LoginSignUpPageState createState() => _LoginSignUpPageState();
}

class _LoginSignUpPageState extends State<LoginSignUpPage> {
  static TextEditingController _controllerCreateEmpresa =
      TextEditingController();
  static TextEditingController _controllerCreateName = TextEditingController();
  static TextEditingController _controllerCreateEmail = TextEditingController();
  static TextEditingController _controllerCreateTel = TextEditingController();
  static TextEditingController _controllerCreateLogin = TextEditingController();
  static TextEditingController _controllerCreatePassword =
      TextEditingController();
  static TextEditingController _controllerCreatePasswordConfir =
      TextEditingController();

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  LoginSignUpModel ls = LoginSignUpModel();
  ClientService _clientService = ClientService();

  _limpaCampos() {
    setState(() {
      _controllerCreateEmpresa.clear();
      _controllerCreateName.clear();
      _controllerCreateEmail.clear();
      _controllerCreateTel.clear();
      _controllerCreateLogin.clear();
      _controllerCreatePassword.clear();
      _controllerCreatePasswordConfir.clear();
    });
  }

  _limpaCampoSenha() {
    setState(() {
      _controllerCreatePassword.clear();
      _controllerCreatePasswordConfir.clear();
    });
  }

  _controllerForm() {
    if (_controllerCreateEmpresa.text == "") {
      final snackbar = SnackBar(
        content: Text("Digite o nome da empresa!"),
        duration: Duration(seconds: 3),
      );
      _scaffoldKey.currentState.showSnackBar(snackbar);
    } else if (_controllerCreateName.text == "") {
      final snackbar = SnackBar(
        content: Text("Digite seu nome completo!"),
        duration: Duration(seconds: 3),
      );
      _scaffoldKey.currentState.showSnackBar(snackbar);
    } else if (_controllerCreateEmail.text == "") {
      final snackbar = SnackBar(
        content: Text("Digite seu E-mail!"),
        duration: Duration(seconds: 3),
      );
      _scaffoldKey.currentState.showSnackBar(snackbar);
    } else if (_controllerCreateTel.text == "") {
      final snackbar = SnackBar(
        content: Text("Digite seu telefone !"),
        duration: Duration(seconds: 3),
      );
      _scaffoldKey.currentState.showSnackBar(snackbar);
    } else if (_controllerCreateLogin.text == "") {
      final snackbar = SnackBar(
        content: Text("Digite seu Login !"),
        duration: Duration(seconds: 3),
      );
      _scaffoldKey.currentState.showSnackBar(snackbar);
    } else if (_controllerCreatePassword.text == "") {
      final snackbar = SnackBar(
        content: Text("Digite sua Senha !"),
        duration: Duration(seconds: 3),
      );
      _scaffoldKey.currentState.showSnackBar(snackbar);
    } else if (_controllerCreatePasswordConfir.text == "") {
      final snackbar = SnackBar(
        content: Text("Confirme a sua senha !"),
        duration: Duration(seconds: 3),
      );
      _scaffoldKey.currentState.showSnackBar(snackbar);
    } else {
      ls.setEmpresa(_controllerCreateEmpresa.text);
      ls.setName(_controllerCreateName.text);
      ls.setEmail(_controllerCreateEmail.text);
      ls.setTel(_controllerCreateTel.text);
      ls.setLogin(_controllerCreateLogin.text);
      ls.setPassword(_controllerCreatePassword.text);
      if (_controllerCreatePassword.text ==
          _controllerCreatePasswordConfir.text) {
        return showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("Criação de Conta"),
              content: Text("Confirmar Cadastramento?"),
              backgroundColor: Colors.white.withOpacity(0.8),
              actions: <Widget>[
                FlatButton(
                  child: Text("Sim"),
                  onPressed: () async {
                    await _clientService.createUser(
                        ls.getEmpresa(),
                        ls.getName(),
                        ls.getLogin(),
                        ls.getPassword(),
                        ls.getTel(),
                        ls.getEmail());
                    Navigator.pop(context);
                    final snackbar = SnackBar(
                      content: Text("Conta Criada Com Sucesso"),
                      duration: Duration(seconds: 3),
                      action: _limpaCampos(),
                    );
                    _scaffoldKey.currentState.showSnackBar(snackbar);
                  },
                ),
                FlatButton(
                  child: Text("Não"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            );
          },
        );
      } else {
        final snackbar = SnackBar(
          content: Text("Senhas não Confere"),
          duration: Duration(seconds: 3),
          action: _limpaCampoSenha(),
        );
        _scaffoldKey.currentState.showSnackBar(snackbar);
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white.withOpacity(0),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
            horizontal: _size.width / 14, vertical: _size.width / 14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: _size.width * 0.08),
              child: CustomTextField(
                label: "NOME FANTASIA",
                hint: "Nome da Empresa",
                controllerForm: _controllerCreateEmpresa,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: _size.width * 0.03),
              child: CustomTextField(
                label: "NOME COMPLETO",
                hint: "Nome Completo",
                controllerForm: _controllerCreateName,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: _size.width * 0.03),
              child: CustomTextField(
                label: "E-MAIL",
                hint: "Exemplo@yapp.com.br",
                controllerForm: _controllerCreateEmail,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: _size.width * 0.03),
              child: CustomTextField(
                label: "TELEFONE",
                hint: "(00)9999-9999",
                controllerForm: _controllerCreateTel,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: _size.width * 0.03),
              child: CustomTextField(
                label: "USUÁRIO",
                hint: "Login",
                controllerForm: _controllerCreateLogin,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: _size.width * 0.03),
              child: CustomTextField(
                label: "DIGITE SUA SENHA",
                hint: "Senha até 8 caracteres",
                obscureText: true,
                controllerForm: _controllerCreatePassword,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: _size.width * 0.03),
              child: CustomTextField(
                label: "CONFIRME SUA SENHA",
                hint: "Confirme a sua senha",
                obscureText: true,
                controllerForm: _controllerCreatePasswordConfir,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            GestureDetector(
              child: Container(
                width: double.infinity,
                child: Text(
                  "JÁ TEM UMA CONTA ?",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ),
              onTap: () {
                _limpaCampos();
              },
            ),
            SizedBox(
              height: _size.width * 0.07,
            ),
            CicleButton(
              label: "CRIAR",
              onTap: () async {
                _controllerForm();
              },
            ),
          ],
        ),
      ),
    );
  }
}
 */