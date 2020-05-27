class CustomerListModel {
  List<String> roles;
  bool active;
  String sId;
  String name;
  String telcel;
  String telfix;
  String email;
  String createDate;
  int iV;

  CustomerListModel(
      {this.roles,
      this.active,
      this.sId,
      this.name,
      this.telcel,
      this.telfix,
      this.email,
      this.createDate,
      this.iV});

  CustomerListModel.fromJson(Map<String, dynamic> json) {
    roles = json['roles'].cast<String>();
    active = json['active'];
    sId = json['_id'];
    name = json['name'];
    telcel = json['telcel'];
    telfix = json['telfix'];
    email = json['email'];
    createDate = json['createDate'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['roles'] = this.roles;
    data['active'] = this.active;
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['telcel'] = this.telcel;
    data['telfix'] = this.telfix;
    data['email'] = this.email;
    data['createDate'] = this.createDate;
    data['__v'] = this.iV;
    return data;
  }
}
