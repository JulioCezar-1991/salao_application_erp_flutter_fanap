class OrderCreateModel {
  String id;
  String status;
  Client client;
  List<Itens> itens;

  OrderCreateModel({this.id, this.status, this.client, this.itens});

  OrderCreateModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    status = json['status'];
    client =
        json['client'] != null ? new Client.fromJson(json['client']) : null;
    if (json['itens'] != null) {
      itens = new List<Itens>();
      json['itens'].forEach((v) {
        itens.add(new Itens.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['status'] = this.status;
    if (this.client != null) {
      data['client'] = this.client.toJson();
    }
    if (this.itens != null) {
      data['itens'] = this.itens.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Client {
  String sId;

  Client({this.sId});

  Client.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    return data;
  }
}

class Itens {
  Client product;

  Itens({this.product});

  Itens.fromJson(Map<String, dynamic> json) {
    product =
        json['product'] != null ? new Client.fromJson(json['product']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.product != null) {
      data['product'] = this.product.toJson();
    }
    return data;
  }
}
