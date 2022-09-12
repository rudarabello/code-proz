//Exercicio 02:
//Peça ao usuário por uma lista de 10 numeros e imprima todos os elementos da lista que
//menores que 5.
import 'dart:io';
import 'dart:convert';

void main() {
List<double> numeroLista = [];

print("""Digite 10 números para que selecione os menores que 5.
33 XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX""");
for(int i = 0; i < 10; i++) {
print("Digite um número");
String resposta = stdin.readLineSync()!;
double numero = double.parse(resposta);
numeroLista.add(numero);
}
List<double> numeros_filtrados = numeroLista.where((f) => f < 5).toList();
print("Os números menores que 5 são: $numeros_filtrados");


 } //main

