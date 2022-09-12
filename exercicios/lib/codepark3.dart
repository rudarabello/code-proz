// Crie uma classe e insira nela, no mínimo, dois atributos,
// os quais devem ter um método acessor (get) e um método
//modificador (set) para cada.

// Defina um objeto para cada atributo e elabore um construtor
//para criar alguma regra.

class Carro {
  final String _modelo;
  final String _cor;

  Carro(this._cor, this._modelo);
  String get modeloPublic => _modelo;
  set modeloPublic(String modeloPublic) {
    modeloPublic = "preto";
  }
  String get corPublic => _cor;
  set corPublic(String novaCorPublic) {
    novaCorPublic = "preto";
  }
}
