class ProductCreateModel {
  String title;
  String description;
  double price;
  String averagetime;

  ProductCreateModel(
      {this.title, this.description, this.price, this.averagetime});

  ProductCreateModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    price = json[price];
    averagetime = json['averagetime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['description'] = this.description;
    data['price'] = this.price;
    data['averagetime'] = this.averagetime;
    return data;
  }
}
