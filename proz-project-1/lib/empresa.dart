import 'package:proz_project_1/socio.dart';
import 'package:proz_project_1/socio_pf.dart';
import 'package:uuid/uuid.dart';

class Empresa extends SocioPf {
  final _uniqueIdEnterprise = Uuid().v1();
  final dataDeRegistro = DateTime.now();
  Socio socio;
  String nomeFantasia;
  String telefone;
  String get uniqueIdEnterprise => _uniqueIdEnterprise;

  Empresa({
    required this.nomeFantasia,
    required super.nome,
    required super.codigoUnico,
    required super.cep,
    required super.rua,
    required super.numero,
    required super.bairro,
    required super.cidade,
    required super.estado,
    required this.telefone,
    required this.socio,
  });
}
