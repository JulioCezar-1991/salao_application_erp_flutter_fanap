import 'package:cpf_cnpj_validator/cpf_validator.dart';

class ControllerValidCpf{
  String _cpf = "";

  String _validadorCPF = "";

  String formatarCPF(String cpf) {
    _cpf = CPFValidator.format(cpf);

    if (CPFValidator.isValid(_cpf) == false) {
      if (_cpf.length < 1) {
        _validadorCPF = "Digite o CPF";
        return _validadorCPF;
      }
      _validadorCPF = "CPF invalido";

      return _validadorCPF;
    }
    return _cpf;
  }
}
