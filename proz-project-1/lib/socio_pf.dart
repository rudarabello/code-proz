import 'package:proz_project_1/endereco.dart';
import 'package:proz_project_1/socio.dart';

class SocioPf extends Socio {
  String cpf;

  SocioPf({
    required super.nome,
    required this.cpf,
    required super.endereco,
  }) : super(cpf);
  @override
  Socio cadastrar({
    required String nome,
    required String numeroDocumento,
    required Endereco endereco,
  }) {
    throw UnimplementedError();
  }
}
