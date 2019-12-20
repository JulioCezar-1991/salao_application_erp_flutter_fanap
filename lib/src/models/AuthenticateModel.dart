class AuthenticateModel {
  String login;
  String password;

  AuthenticateModel({
    this.login,
    this.password,
  });

  AuthenticateModel.fromJson(Map<dynamic, dynamic> json) {
    login = json['login'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['login'] = this.login;
    data['password'] = this.password;
    return data;
  }
}
