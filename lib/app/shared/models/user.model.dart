class UserModel {
  String name;
  String email;

  UserModel({
    this.name,
    this.email,
  });

  UserModel.fromJson(Map<String, dynamic> json)
      : this(
          name: json['name'],
          email: json['email'],
        );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    return data;
  }
}
