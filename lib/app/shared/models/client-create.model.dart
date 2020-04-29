class ClientCreateModel {
  String name;
  String cpf;
  String date;
  String telcel;
  String telfix;
  String email;
  String address;
  String sector;
  String city;
  String state;

  ClientCreateModel(
      {this.name,
      this.cpf,
      this.date,
      this.telcel,
      this.telfix,
      this.email,
      this.address,
      this.sector,
      this.city,
      this.state});

  ClientCreateModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    cpf = json['cpf'];
    date = json['date'];
    telcel = json['telcel'];
    telfix = json['telfix'];
    email = json['email'];
    address = json['address'];
    sector = json['sector'];
    city = json['city'];
    state = json['state'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['cpf'] = this.cpf;
    data['date'] = this.date;
    data['telcel'] = this.telcel;
    data['telfix'] = this.telfix;
    data['email'] = this.email;
    data['address'] = this.address;
    data['sector'] = this.sector;
    data['city'] = this.city;
    data['state'] = this.state;
    return data;
  }
}
