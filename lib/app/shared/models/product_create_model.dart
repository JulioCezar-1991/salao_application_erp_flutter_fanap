class ProductCreateModel {
  String id;
  String title;
  String description;
  String type;
  double price;
  String averagetime;

  ProductCreateModel({
    this.id,
    this.title,
    this.description,
    this.type,
    this.price,
    this.averagetime,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['type'] = this.type;
    data['price'] = this.price;
    data['averagetime'] = this.averagetime;

    return data;
  }
}
