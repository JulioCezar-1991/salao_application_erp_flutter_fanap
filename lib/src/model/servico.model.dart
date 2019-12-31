class ServicoModel {
  int codigo;
  String descricao;
  int valor;
  String tempoGasto;
  int tipoServicoCodigo;

  ServicoModel(
      {this.codigo,
      this.descricao,
      this.valor,
      this.tempoGasto,
      this.tipoServicoCodigo});

  ServicoModel.fromJson(Map<String, dynamic> json) {
    codigo = json['codigo'];
    descricao = json['descricao'];
    valor = json['valor'];
    tempoGasto = json['tempoGasto'];
    tipoServicoCodigo = json['TipoServico_codigo'];
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