class OrderDoneListModel {
  String subtotal;
  String status;
  String sId;
  Customer customer;
  Client client;
  String number;
  List<Itens> itens;

  OrderDoneListModel(
      {this.subtotal,
      this.status,
      this.sId,
      this.customer,
      this.client,
      this.number,
      this.itens});

  OrderDoneListModel.fromJson(Map<String, dynamic> json) {
    subtotal = json['subtotal'];
    status = json['status'];
    sId = json['_id'];
    customer = json['customer'] != null
        ? new Customer.fromJson(json['customer'])
        : null;
    client =
        json['client'] != null ? new Client.fromJson(json['client']) : null;
    number = json['number'];
    if (json['itens'] != null) {
      itens = new List<Itens>();
      json['itens'].forEach((v) {
        itens.add(new Itens.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['subtotal'] = this.subtotal;
    data['status'] = this.status;
    data['_id'] = this.sId;
    if (this.customer != null) {
      data['customer'] = this.customer.toJson();
    }
    if (this.client != null) {
      data['client'] = this.client.toJson();
    }
    data['number'] = this.number;
    if (this.itens != null) {
      data['itens'] = this.itens.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Customer {
  String sId;
  String name;

  Customer({this.sId, this.name});

  Customer.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    return data;
  }
}

class Client {
  String sId;
  String name;
  String telcel;
  String telfix;
  String email;

  Client({this.sId, this.name, this.telcel, this.telfix, this.email});

  Client.fromJson(Map<String, dynamic> json) {
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
