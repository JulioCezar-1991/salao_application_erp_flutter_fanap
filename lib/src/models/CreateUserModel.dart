class CreateUserModel {
  int codigo;
  String nomeCompleto;
  String telefone;
  String email;
  String login;
  String password;
  int permissaoCodigo;

  CreateUserModel({
    this.codigo,
    this.nomeCompleto,
    this.telefone,
    this.email,
    this.login,
    this.password,
    this.permissaoCodigo,
  });
  

  CreateUserModel.fromJson(Map<String, dynamic> json) {
    codigo = json['codigo'];
    nomeCompleto = json['nome_completo'];
    telefone = json['telefone'];
    email = json['email'];
    login = json['login'];
    password = json['password'];
    permissaoCodigo = json['Permissao_codigo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['codigo'] = this.codigo;
    data['nome_completo'] = this.nomeCompleto;
    data['telefone'] = this.telefone;
    data['email'] = this.email;
    data['login'] = this.login;
    data['password'] = this.password;
    data['permissao_codigo'] = this.permissaoCodigo;
    return data;
  }
}
