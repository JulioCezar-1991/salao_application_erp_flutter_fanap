class ServicoListModel {
  String codigo;
  String descricao;
  String valor;
  String tempoGasto;
  String tipoServicoCodigo;

  ServicoListModel(
      {this.codigo,
      this.descricao,
      this.valor,
      this.tempoGasto,
      this.tipoServicoCodigo});

  ServicoListModel.fromJson(Map<String, dynamic> json) {
    codigo = json['codigo'].toString();
    descricao = json['descricao'];
    valor = json['valor'].toString();
    tempoGasto = json['tempoGasto'];
    tipoServicoCodigo = json['TipoServico_codigo'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['codigo'] = this.codigo;
    data['descricao'] = this.descricao;
    data['valor'] = this.valor;
    data['tempoGasto'] = this.tempoGasto;
    data['TipoServico_codigo'] = this.tipoServicoCodigo;
    return data;
  }
}