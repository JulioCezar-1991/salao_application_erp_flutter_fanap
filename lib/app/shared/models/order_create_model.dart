class OrderCreateModel {
  String customer;
  String client;
  String schedulingdate;
  String schedulinghour;
  double subtotal;
  String status;
  List<Items> items;

  OrderCreateModel(
      {this.customer,
      this.client,
      this.schedulingdate,
      this.schedulinghour,
      this.subtotal,
      this.status,
      this.items});

  OrderCreateModel.fromJson(Map<String, dynamic> json) {
    customer = json['customer'];
    client = json['client'];
    schedulingdate = json['schedulingdate'];
    schedulinghour = json['schedulinghour'];
    subtotal = json[subtotal];
    status = json['status'];
    if (json['items'] != null) {
      items = new List<Items>();
      json['items'].forEach((v) {
        items.add(new Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['customer'] = this.customer;
    data['client'] = this.client;
    data['schedulingdate'] = this.schedulingdate;
    data['schedulinghour'] = this.schedulinghour;
    data['subtotal'] = this.subtotal;
    data['status'] = this.status;
    if (this.items != null) {
      data['items'] = this.items.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  String product;
  String price;

  Items({this.product, this.price});

  Items.fromJson(Map<String, dynamic> json) {
    product = json['product'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product'] = this.product;
    data['price'] = this.price;
    return data;
  }
}
