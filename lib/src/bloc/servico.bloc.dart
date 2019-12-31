

import 'package:flutter/material.dart';
import 'package:projectfanap/src/model/servico-create.model.dart';
import 'package:projectfanap/src/model/servico.model.dart';
import 'package:projectfanap/src/repositorie/servico.repository.dart';

class ServicoBloc extends ChangeNotifier{

  var servico = ServicoModel();

  ServicoBloc(){
    servico = null;
  }

  Future<ServicoModel> servicoCreate(ServicoCreateModel model) async {
    try {
      var repository = ServicoRepository();
            var res = await repository.postServico(model);
      return res;
    } catch (ex){
      print(ex);
      servico = null;
      return null;
    }
  }
}