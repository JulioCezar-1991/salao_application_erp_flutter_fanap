class ClientCreateModel {
  String id;
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
      {this.id,
      this.name,
      this.cpf,
      this.date,
      this.telcel,
      this.telfix,
      this.email,
      this.address,
      this.sector,
      this.city,
      this.state});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
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
