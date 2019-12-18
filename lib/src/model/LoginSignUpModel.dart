class LoginSignUpModel {
  int _codigo;
  String _nomeCompleto;
  String _telefone;
  String _email;
  String _login;
  String _password;
  int _permissaoCodigo;

  LoginSignUpModel(
      {int codigo,
      String nomeCompleto,
      String telefone,
      String email,
      String login,
      String password,
      int permissaoCodigo}) {
    this._codigo = codigo;
    this._nomeCompleto = nomeCompleto;
    this._telefone = telefone;
    this._email = email;
    this._login = login;
    this._password = password;
    this._permissaoCodigo = permissaoCodigo;
  }

  int get getCodigo => _codigo;
  set setCodigo(int codigo) => _codigo = codigo;
  String get getNomeCompleto => _nomeCompleto;
  set setNomeCompleto(String nomeCompleto) => _nomeCompleto = nomeCompleto;
  String get getTelefone => _telefone;
  set setTelefone(String telefone) => _telefone = telefone;
  String get getEmail => _email;
  set setEmail(String email) => _email = email;
  String get getLogin => _login;
  set setLogin(String login) => _login = login;
  String get getPassword => _password;
  set setPassword(String password) => _password = password;
  int get getPermissaoCodigo => _permissaoCodigo;
  set setPermissaoCodigo(int permissaoCodigo) =>
      _permissaoCodigo = permissaoCodigo;

  LoginSignUpModel.fromJson(Map<String, dynamic> json) {
    _codigo = json['codigo'];
    _nomeCompleto = json['nome_completo'];
    _telefone = json['telefone'];
    _email = json['email'];
    _login = json['login'];
    _password = json['password'];
    _permissaoCodigo = json['permissao_codigo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['codigo'] = this._codigo;
    data['nome_completo'] = this._nomeCompleto;
    data['telefone'] = this._telefone;
    data['email'] = this._email;
    data['login'] = this._login;
    data['password'] = this._password;
    data['permissao_codigo'] = this._permissaoCodigo;
    return data;
  }
}
