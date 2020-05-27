class ProductModel {
  bool active;
  String sId;
  String title;
  String description;
  String type;
  double price;
  String averagetime;
  String createDate;
  int iV;

  ProductModel(
      {this.active,
      this.sId,
      this.title,
      this.description,
      this.type,
      this.price,
      this.averagetime,
      this.createDate,
      this.iV});

  ProductModel.fromJson(Map<String, dynamic> json) {
    active = json['active'];
    sId = json['_id'];
    title = json['title'];
    description = json['description'];
    type = json['type'];
    price = double.parse(json['price'].toString());
    averagetime = json['averagetime'];
    createDate = json['createDate'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['active'] = this.active;
    data['_id'] = this.sId;
    data['title'] = this.title;
    data['description'] = this.description;
    data['type'] = this.type;
    data['price'] = this.price;
    data['averagetime'] = this.averagetime;
    data['createDate'] = this.createDate;
    data['__v'] = this.iV;
    return data;
  }
}
