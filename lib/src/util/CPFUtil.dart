import 'package:cpf_cnpj_validator/cpf_validator.dart';
import 'package:flutter/material.dart';
class CPFUtil{

String _cpf = "";
String _validadorCPF = "";

   String formatarCPF(String cpf) {
    
      _cpf = CPFValidator.format(cpf);
    
    if (CPFValidator.isValid(_cpf) == false) {
      if (_cpf.length < 1) {
        _validadorCPF = "Digite seu CPF";
        return _validadorCPF;
      }
        _validadorCPF = "CPF invalido";
      return _validadorCPF;
    }
    return _cpf;
  }

}