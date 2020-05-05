class ProductModel {
  String sId;
  String title;
  String description;
  double price;
  String averagetime;

  ProductModel(
      {this.sId, this.title, this.description, this.price, this.averagetime});

  ProductModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    title = json['title'];
    description = json['description'];
    price = json['price'];
    averagetime = json['averagetime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['title'] = this.title;
    data['description'] = this.description;
    data['price'] = this.price;
    data['averagetime'] = this.averagetime;
    return data;
  }
}
