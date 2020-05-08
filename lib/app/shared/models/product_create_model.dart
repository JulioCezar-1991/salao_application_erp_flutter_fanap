class ProductCreateModel {
  String sId;
  String title;
  String description;
  String type;
  double price;
  String averagetime;

  ProductCreateModel({
    this.sId,
    this.title,
    this.description,
    this.type,
    this.price,
    this.averagetime,
  });

  ProductCreateModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    title = json['title'];
    description = json['description'];
    type = json['type'];
    price = json['price'];
    averagetime = json['averagetime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['title'] = this.title;
    data['description'] = this.description;
    data['type'] = this.type;
    data['price'] = this.price;
    data['averagetime'] = this.averagetime;

    return data;
  }
}

/* String id;
id = json['id'];
data['id'] = this.id; */
