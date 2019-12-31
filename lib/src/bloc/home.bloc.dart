import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:projectfanap/src/model/servico-list.model.dart';
import 'package:projectfanap/src/repositorie/servico.repository.dart';

class HomeBloc extends ChangeNotifier {
  
  final serviceRepository = ServicoRepository();

  List<ServicoListModel> servicos;

  HomeBloc(){
    getServicos();
  }

  getServicos() {
    serviceRepository.getServico().then((data){
      this.servicos = data;
      notifyListeners();
    });
  }
}