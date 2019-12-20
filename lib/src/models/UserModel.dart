class UserModel {
  int codigo;
  String nomeCompleto;
  String telefone;
  String email;
  String login;
  int permissaoCodigo;

  UserModel(
      {this.codigo,
      this.nomeCompleto,
      this.telefone,
      this.email,
      this.login,
      this.permissaoCodigo});

  UserModel.fromJson(Map<String, dynamic> json) {
    codigo = json['codigo'];
    nomeCompleto = json['nomeCompleto'];
    telefone = json['telefone'];
    email = json['email'];
    login = json['login'];
    permissaoCodigo = json['Permissao_codigo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['codigo'] = this.codigo;
    data['nomeCompleto'] = this.nomeCompleto;
    data['telefone'] = this.telefone;
    data['email'] = this.email;
    data['login'] = this.login;
    data['Permissao_codigo'] = this.permissaoCodigo;
    return data;
  }
}