class Funcionario {
  static const salarioMinimo = 1212.0;

  final String nome;
  final String matricula;
  final String? apelido;
  double _salario;

  // ignore: recursive_getters
  int get diasTrabalhados => diasTrabalhados;

  Funcionario(
    this._salario, {
    required this.nome,
    required this.matricula,
    this.apelido,
  }) : assert(_salario >= salarioMinimo, "Salário menor que o mínimo");

  set salario(double qualquerCoisa) {
    if (qualquerCoisa < salarioMinimo) {
      _salario = salarioMinimo;
    } else {
      _salario = qualquerCoisa;
    }
  }

  double get getterSalario => _salario;

  void baterPonto() {}
}
