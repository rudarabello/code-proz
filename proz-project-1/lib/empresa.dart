import 'package:proz_project_1/socio.dart';
import 'package:proz_project_1/socio_pf.dart';
import 'package:uuid/uuid.dart';

class Empresa extends SocioPf {
  final _uniqueIdEnterprise = Uuid().v1();
  final _dataDeRegistro = DateTime.now();
  Socio socio;
  String? nomeFantasia;
  String? telefone;
  String cnpj;
  String get uniqueIdEnterprise => _uniqueIdEnterprise;
  DateTime get dataDeRegistro => _dataDeRegistro;
  String get telefoneFormatado =>
      '${telefone!.substring(0, 2)}${telefone!.substring(2, 7)}-${telefone!.substring(7)}';
  String get resultadoFinal {
    return '''
    ID: $uniqueIdEnterprise
    CNPJ: $codigoUnico
    Razão Social: $nome
    Nome fantasia: $nomeFantasia
    Telefone: $telefone
    Endereço: $endereco
    Sócio
    CPF: $socio.cpfFormatado
    Nome Completo:$socio.nome
    Endereço: $socio.endereco
''';
  }

  Empresa({
    required this.nomeFantasia,
    required this.telefone,
    required this.socio,
    required this.cnpj,
    required super.nome,
    required super.codigoUnico,
    required super.cep,
    required super.rua,
    required super.numero,
    required super.bairro,
    required super.cidade,
    required super.estado,
  }) : super();
}
