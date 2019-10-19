class LoginSignUpModel {
  String _empresa;
  String _name;
  String _login;
  String _password;
  String _tel;
  String _email;

  LoginSignUpModel(
      {String empresa,
      String name,
      String login,
      String pass,
      String passConfir,
      String tel,
      String email}) {
    this._empresa = empresa;
    this._name = name;
    this._login = login;
    this._password = pass;
    this._tel = tel;
    this._email = email;
  }

  void setEmpresa(String empresa) {
    this._empresa = empresa;
  }

  String getEmpresa() {
    return this._empresa;
  }

  void setName(String name) {
    this._name = name;
  }

  String getName() {
    return this._name;
  }

  void setLogin(String login) {
    this._login = login;
  }

  String getLogin() {
    return this._login;
  }

  void setPassword(String pass) {
    this._password = pass;
  }

  String getPassword() {
    return this._password;
  }

  void setTel(String tel) {
    this._tel = tel;
  }

  String getTel() {
    return this._tel;
  }

  void setEmail(String email) {
    this._email = email;
  }

  String getEmail() {
    return this._email;
  }
}
