class UserCreaterModel {
  List<String> roles;
  String name;
  String telcel;
  String email;
  String login;
  String password;

  UserCreaterModel({
    this.roles,
    this.name,
    this.telcel,
    this.email,
    this.login,
    this.password,
  });

  UserCreaterModel.fromJson(Map<String, dynamic> json) {
    roles = json['roles'].cast<String>();
    name = json['name'];
    telcel = json['telcel'];
    email = json['email'];
    login = json['login'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['roles'] = this.roles;
    data['name'] = this.name;
    data['telcel'] = this.telcel;
    data['email'] = this.email;
    data['login'] = this.login;
    data['password'] = this.password;
    return data;
  }
}
