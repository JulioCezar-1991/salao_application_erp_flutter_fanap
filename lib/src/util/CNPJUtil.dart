
import 'package:cpf_cnpj_validator/cnpj_validator.dart';
class CNPJUtil{

String _cnpj = "";
String _validadorCNPJ = "";

   String formatarCNPJ(String cnpj) {
    
      _cnpj = CNPJValidator.format(cnpj);
    
    if (CNPJValidator.isValid(_cnpj) == false) {
      if (_cnpj.length < 1) {
        _validadorCNPJ = "Digite seu CNPJ";
        return _validadorCNPJ;
      }
        _validadorCNPJ = "CNPJ invalido";
      return _validadorCNPJ;
    }
    return _cnpj;
  }

}