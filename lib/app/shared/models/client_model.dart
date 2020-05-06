class ClientModel {
  bool active;
  String sId;
  String name;
  String cpf;
  String date;
  String telcel;
  String telfix;
  String email;
  String address;
  String sector;
  String city;
  String createDate;
  int iV;

  ClientModel(
      {this.active,
      this.sId,
      this.name,
      this.cpf,
      this.date,
      this.telcel,
      this.telfix,
      this.email,
      this.address,
      this.sector,
      this.city,
      this.createDate,
      this.iV});

  ClientModel.fromJson(Map<String, dynamic> json) {
    active = json['active'];
    sId = json['_id'];
    name = json['name'];
    cpf = json['cpf'];
    date = json['date'];
    telcel = json['telcel'];
    telfix = json['telfix'];
    email = json['email'];
    address = json['address'];
    sector = json['sector'];
    city = json['city'];
    createDate = json['createDate'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['active'] = this.active;
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['cpf'] = this.cpf;
    data['date'] = this.date;
    data['telcel'] = this.telcel;
    data['telfix'] = this.telfix;
    data['email'] = this.email;
    data['address'] = this.address;
    data['sector'] = this.sector;
    data['city'] = this.city;
    data['createDate'] = this.createDate;
    data['__v'] = this.iV;
    return data;
  }
}
