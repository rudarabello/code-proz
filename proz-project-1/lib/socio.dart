abstract class Socio {
  String nome;
  String codigoUnico;
  String cep;
  String rua;
  int numero;
  String bairro;
  String cidade;
  String estado;
  Socio({
    required this.nome,
    required this.codigoUnico,
    required this.cep,
    required this.rua,
    required this.numero,
    required this.bairro,
    required this.cidade,
    required this.estado,
  });

  static String tipoDeDocumento(codigoUnico) {
    if (codigoUnico.length == 11) {
      return "${codigoUnico.substring(0, 3)}.${codigoUnico.substring(3, 6)}.${codigoUnico.substring(6, 9)}.${codigoUnico.substring(10, 12)}";
    } else if (codigoUnico.length == 14) {
      return "${codigoUnico.substring(0, 3)}.${codigoUnico.substring(3, 6)}.${codigoUnico.substring(6, 9)}.${codigoUnico.substring(10, 12)}";
    } else {
      return "Documento inválido";
    }
  }

  String get cepFormatado => '${cep.substring(0, 5)}-${cep.substring(5)}';

  String get endereco =>
      '$rua, $numero, $bairro, $cidade/$estado, $cepFormatado';

}
