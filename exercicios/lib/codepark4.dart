// Crie três classes, as quais devem conter 
//um método de manipulação de String cada e que
// retornem um valor quando forem invocados

class Instrumento {
  final String _tipo;
  Instrumento(this._tipo);
  String get tipoPublic => _tipo;
  set tipoPublic(String novoTipoPublic) {
    novoTipoPublic = "Violão";
  }

}

class Caneta {
  final String _cor;
  Caneta(this._cor);
  String get corPublic => _cor;
  set corPublic(String novaCorPublic) {
    novaCorPublic = "preto";
  }
}

class Folha {
  final String _tamanho;
  Folha(this._tamanho);
  String get tamanhoPublic => _tamanho;
  set tamanhoPublic(String novoTamanhoPublic) {
    novoTamanhoPublic = "preto";
  }
}