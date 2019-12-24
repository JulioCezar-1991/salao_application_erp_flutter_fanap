class UserAuthenticateModel {
  String login;
  String password;

  UserAuthenticateModel({
    this.login,
    this.password,
  });

  UserAuthenticateModel.fromJson(Map<dynamic, dynamic> json) {
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
