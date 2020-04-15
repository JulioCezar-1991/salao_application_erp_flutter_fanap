class ServicoCreateModel {
  String title;
  String description;
  double price;
  String averagetime;
  bool active;

  ServicoCreateModel(
      {this.title,
      this.description,
      this.price,
      this.averagetime,
      this.active});

  ServicoCreateModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    price = json['price'];
    averagetime = json['averagetime'];
    active = json['active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['description'] = this.description;
    data['price'] = this.price;
    data['averagetime'] = this.averagetime;
    data['active'] = this.active;
    return data;
  }
}
