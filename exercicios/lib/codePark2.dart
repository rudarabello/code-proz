// Crie uma classe de sua preferência com,
// no mínimo, um atributo, um método com
//retorno e um método sem retorno. Depois,
//instancie três ou mais objetos para
// testar esta classe.

class Vendas {
  double valor;
  final double comissao = 350.00;
  Vendas(this.valor);
  
  double salario() {
    return valor + comissao;
  }

  void valorDaComissao() {
    print("O valor da comissão é: $comissao");
  }

}
