import 'package:projeto_rh/funcionario.dart';

//TODO: modificar o construtor para impedir que sejam construídos objetos com salário abaixo do mínimo vigente
class Vendedor extends Funcionario {
  double _bonificacao = 0;
  set bonificacao(double valorBonificacao) {
    _bonificacao = valorBonificacao / 100;
  }

  @override
  double get salario {
    if (_bonificacao > 0) {
      final salarioComBonificacao =
          super.salario + super.salario * _bonificacao;
      return salarioComBonificacao;
    } else {
      return super.salario;
    }
  }

  Vendedor(
    super.salario, {
    required super.nome,
    required super.matricula,
    super.nomeSocial,
    required String cargo,
  });
}
