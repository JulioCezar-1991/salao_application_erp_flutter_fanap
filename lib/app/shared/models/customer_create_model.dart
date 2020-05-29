class CustomerCreaterModel {
  List<String> roles;
  String name;
  String telcel;
  String telfix;
  String email;
  String login;
  String password;

  CustomerCreaterModel({
    this.roles,
    this.name,
    this.telcel,
    this.telfix,
    this.email,
    this.login,
    this.password,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['roles'] = this.roles;
    data['name'] = this.name;
    data['telcel'] = this.telcel;
    data['telfix'] = this.telfix;
    data['email'] = this.email;
    data['login'] = this.login;
    data['password'] = this.password;
    return data;
  }
}
