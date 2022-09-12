import '/funcionario.dart';

class Atendente extends Funcionario {
  Atendente(
    super.salario, {
    required super.nome,
    required super.matricula,
    super.nomeSocial, required String cargo,
  });

  final _listaDeRecados = <String>[];

  List<String> get recados => _listaDeRecados;

  void anotarRecados(String? recado) {
    if (recado != null) {
      _listaDeRecados.add(recado);
    }
  }
}