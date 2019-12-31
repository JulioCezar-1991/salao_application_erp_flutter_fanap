class ServicoCreateModel {
  int codigo;
  String descricao;
  double valor;
  String tempoGasto;
  int tipoServicoCodigo;

  ServicoCreateModel({
    this.codigo,
      this.descricao,
      this.valor,
      this.tempoGasto,
      this.tipoServicoCodigo});

  ServicoCreateModel.fromJson(Map<String, dynamic> json) {
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