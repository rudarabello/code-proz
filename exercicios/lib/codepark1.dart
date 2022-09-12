class Pessoa {
  late String nome;
  late int idade;
  late double peso;
  
  void dormir(){
    print("$nome está dormindo");
  }
  void aniversario(){
    idade++;
  }
  void emagrecer(){
    peso--;
  }
}
class Carro {
  late String nome;
  late int fabrication;
  late double cor;
  void lavar(){
    print("$nome está sujo");
  }
  void aniversario(){
    fabrication++;
  }
  void qualCor(){
    print("$cor do $nome");
  }
}

class Sentir {
  late String nome;
  late String tipo;
  late String intensidade;
  
  void qualSentimento(){
    print("$nome ");
  }
  void qualTipo(){
    print("$tipo ");
  }
  void intensidadeDoSentimento(){
    print("$intensidade ");
  }
}
class Amar {
  late String amado;
  late String amante;
  late String intensidade;
  
  void qualAmado(){
    print("$amado ");
  }
  void qualAmante(){
    print("$amante ");
  }
  void intensidadeDoSentimento(){
    print("$intensidade ");
  }
}