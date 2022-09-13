import 'package:proz_project_1/endereco.dart';

abstract class Socio {
  String nome;
  final String _documento;
  Endereco endereco;
  Socio(
    this.documento,{
      required this.nome,
      required this.endereco,
    });
  Socio cadastrar ({
    required String nome,
    required String numeroDocumento,
    required Endereco endereco,
  });
  String get documento {
    if (_documento.length == 11) {
      return "${_documento.substring(0, 3).${_documento.substring(3,6).${_documento.substring(6,9).${_documento.substring(10,12)}";
    }else if(_documento.length == 14){
      return "${_documento.substring(0, 3).${_documento.substring(3,6).${_documento.substring(6,9).${_documento.substring(10,12)}";
    }else{
      return "Documento inválido";
    }
    
}
