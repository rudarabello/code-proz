// ignore_for_file: unused_field

abstract class Funcionario {
  static const salarioMinimo = 1212.0;
  final String nome;
  final String matricula;
  final String? nomeSocial;
  double _salario;
  double get salario => _salario;
  int _diasTrabalhados = 0;
  set salario(double novoSalario) {
    if (novoSalario < salarioMinimo) {
      _salario = salarioMinimo;
    } else {
      _salario = novoSalario;
    }
  }

  int get diasTrabalhados => _diasTrabalhados;
  Funcionario(
    this._salario, {
    required this.nome,
    required this.matricula,
    this.nomeSocial,
  });
  void baterPonto() {
    _diasTrabalhados++;
  }
}
