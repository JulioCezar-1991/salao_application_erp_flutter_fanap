class ProductListModel {
  String sId;
  String title;
  String slug;
  String description;
  double price;
  String averagetime;

  ProductListModel(
      {this.sId,
      this.title,
      this.slug,
      this.description,
      this.price,
      this.averagetime});

  ProductListModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    title = json['title'];
    slug = json['slug'];
    description = json['description'];
    price = json[price];
    averagetime = json['averagetime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['title'] = this.title;
    data['slug'] = this.slug;
    data['description'] = this.description;
    data['price'] = this.price;
    data['averagetime'] = this.averagetime;
    return data;
  }
}
