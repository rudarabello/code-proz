import 'package:proz_project_1/socio.dart';

class SocioPj extends Socio {
  SocioPj({
    required super.nome,
    required super.codigoUnico,
    required super.cep,
    required super.rua,
    required super.numero,
    required super.bairro,
    required super.cidade,
    required super.estado,
  });

  String documento = Socio.tipoDeDocumento(this.codigoUnico);
}
