class OrderAllListModel {
  String status;
  String sId;
  String number;
  Customer customer;
  Customer client;
  String schedulingdate;
  String schedulinghour;
  List<Itens> itens;
  double subtotal;
  String createDate;

  OrderAllListModel(
      {this.status,
      this.sId,
      this.number,
      this.customer,
      this.client,
      this.schedulingdate,
      this.schedulinghour,
      this.itens,
      this.subtotal,
      this.createDate});

  OrderAllListModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    sId = json['_id'];
    number = json['number'];
    customer = json['customer'] != null
        ? new Customer.fromJson(json['customer'])
        : null;
    client =
        json['client'] != null ? new Customer.fromJson(json['client']) : null;
    schedulingdate = json['schedulingdate'];
    schedulinghour = json['schedulinghour'];
    if (json['itens'] != null) {
      itens = new List<Itens>();
      json['itens'].forEach((v) {
        itens.add(new Itens.fromJson(v));
      });
    }
    subtotal = json[subtotal];
    createDate = json['createDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['_id'] = this.sId;
    data['number'] = this.number;
    if (this.customer != null) {
      data['customer'] = this.customer.toJson();
    }
    if (this.client != null) {
      data['client'] = this.client.toJson();
    }
    data['schedulingdate'] = this.schedulingdate;
    data['schedulinghour'] = this.schedulinghour;
    if (this.itens != null) {
      data['itens'] = this.itens.map((v) => v.toJson()).toList();
    }
    data['subtotal'] = this.subtotal;
    data['createDate'] = this.createDate;
    return data;
  }
}

class Customer {
  String sId;
  String name;
  String telcel;
  String telfix;
  String email;

  Customer({this.sId, this.name, this.telcel, this.telfix, this.email});

  Customer.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    telcel = json['telcel'];
    telfix = json['telfix'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['telcel'] = this.telcel;
    data['telfix'] = this.telfix;
    data['email'] = this.email;
    return data;
  }
}

class Itens {
  Product product;

  Itens({this.product});

  Itens.fromJson(Map<String, dynamic> json) {
    product =
        json['product'] != null ? new Product.fromJson(json['product']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.product != null) {
      data['product'] = this.product.toJson();
    }
    return data;
  }
}

class Product {
  String sId;
  String title;
  double price;
  String averagetime;

  Product({this.sId, this.title, this.price, this.averagetime});

  Product.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    title = json['title'];
    price = json['price'];
    averagetime = json['averagetime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['title'] = this.title;
    data['price'] = this.price;
    data['averagetime'] = this.averagetime;
    return data;
  }
}
