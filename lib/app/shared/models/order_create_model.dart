class OrderCreateModel {
  String id;
  String customer;
  String client;
  String schedulingdate;
  double subtotal;
  String status;
  String formPayment;
  List<Map<String, dynamic>> items;

  OrderCreateModel(
      {this.id,
      this.customer,
      this.client,
      this.schedulingdate,
      this.subtotal,
      this.status,
      this.formPayment,
      this.items});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['customer'] = this.customer;
    data['client'] = this.client;
    data['schedulingdate'] = this.schedulingdate;
    data['subtotal'] = this.subtotal;
    data['status'] = this.status;
    data['formPayment'] = this.formPayment;
    if (this.items != null) {
      data['items'] = this.items;
    }
    return data;
  }
}
