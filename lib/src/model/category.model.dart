class ServiceCategory {
  int codigo;
  String descricao;

  ServiceCategory({this.codigo, this.descricao});

  ServiceCategory.fromJson(Map<String, dynamic> json) {
    codigo = json['codigo'];
    descricao = json['descricao'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['codigo'] = this.codigo;
    data['descricao'] = this.descricao;
    return data;
  }
}