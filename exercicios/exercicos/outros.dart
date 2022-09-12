// 49 Exercicio 03:
// 50 //Crie um programa que solicite um número ao usuário e imprima uma lista de todos os
// divisores desse número. Se você não sabe o que é um divisor,
// 51 é um número que é divisível por outro número. Por exemplo, 13 é um divisor de 26 porque
// o resto da divisão de 26/13 é igual a zero.
// 52
// 53 import 'dart:io';
// 54 import 'dart:convert';
// 55
// 56 void main() {
// 57
// 58 List<int> numeroLista = [];
// 59
// 60 print("""Digite um número para que verifique os seus divisores.
// 61 XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX""");
// 62 String resposta = stdin.readLineSync()!;
// 63 int numero = int.parse(resposta);
// 64
// 65 
// 66 for(int i = 1; i <= numero; i++) {
// 67 if (numero % i == 0){
// 68 numeroLista.add(i);
// 69 }
// 70
// 71 }
// 72 print(numeroLista);
// 73 } //main
// 74
// 75
// 76 Exercicio 04:
// 77 //Faça um jogo de Pedra-Papel-Tesoura para dois jogadores contra o computador. Peça um
// valor ao usuário, compare-os, imprima uma mensagem para o vencedor.
// 78
// 79 import 'dart:io';
// 80 import 'dart:convert';
// 81 import 'dart:math';
// 82 Random random = new Random();
// 83
// 84 void main() {
// 85
// 86
// 87 int contadorGanhos = 0;
// 88 int contadorEmpate = 0;
// 89
// 90 print("Quantas partidas você quer jogar?");
// 91 String resposta = stdin.readLineSync()!;
// 92 int numero_partidas = int.parse(resposta);
// 93 print('Você pediu para jogar $numero_partidas partidas. Vamos começar. Que vença o
// melhor!');
// 94
// 95 for(int i = 0; i < numero_partidas; i++) {
// 96
// 97 print("""O que você escolhe?
// 98 1) Digite 1 para pedra;
// 99 2) Digite 2 para papel;
// 100 3) Digite 3 para tesoura;
// 101 """);
// 102 int escolha_usuario = int.parse(stdin.readLineSync()!);
// 103 int escolha_computador = random.nextInt(2) + 1;
// 104 int resultado = verifica_jogo(escolha_usuario,escolha_computador);
// 105 if (resultado == 0){
// 106 print("Empatamos o jogo. Ambos escolhemos ${verifica_escolha(escolha_usuario)}");
// 107 contadorEmpate++;
// 108 } else{
// 109 if (resultado == 1){
// 110 print("Parabéns, você jogou ${verifica_escolha(escolha_usuario)} e ganhou. Eu
// joguei ${verifica_escolha(escolha_computador)} e perdi.");
// 111 contadorGanhos++;
// 112 } else if (resultado == 2){
// 113 print("Infelizmente você perdeu. Você jogou ${verifica_escolha(escolha_usuario)} e
// eu joguei ${verifica_escolha(escolha_computador)} e ganhei.");
// 114 } else{
// 115 print("A sua opção de jogo é inexistente!");
// 116 }
// 117 }
// 118
// 119 }
// 120 //fim do for
// 121 print('Jogamos $numero_partidas partidas e você ganhou $contadorGanhos partida(s) e
// obteve $contadorEmpate empate(s). ${verifica_sorte(numero_partidas, contadorGanhos)}.
// Obrigado por sua companhia.');
// 122 }//main
// 123
// 124 String verifica_sorte(int partidas, int ganhos){
// 125 if ((ganhos/partidas) > 0.5){
// 126 return "Você está com sorte.";
// 127 } else {
// 128 return "Melhor sorte da próxima vez meu camarada";
// 129 }
// 130
// 131 }
// 132 String verifica_escolha(int escolha){
// 133 if (escolha == 1){
// 134 return 'pedra';
// 135 } else if(escolha == 2 ) {
// 136 return 'papel';
// 137 } else if(escolha == 3 ) {
// 138 return 'tesoura';
// 139 } else {
// 140 return 'escolha desconhecida';
// 141 }
// 142 } //fim função verifica_escolha
// 143
// 144 int verifica_jogo(int escolha1, int escolha2){
// 145
// 146 if (escolha1 == escolha2){
// 147 return 0;
// 148 } else {
// 149 if (escolha1 == 1 && escolha2 == 2 ){
// 150 return 1;
// 151 } else if ((escolha1 == 2 && escolha2 == 1)) {
// 152 return 2;
// 153 } else if ((escolha1 == 2 && escolha2 == 3)){
// 154 return 1;
// 155 } else if ((escolha1 == 3 && escolha2 == 2 )){
// 156 return 1;
// 157 } else if ((escolha1 == 3 && escolha2 == 1 )){
// 158 return 2;
// 159 } else if ((escolha1 == 1 && escolha2 == 2 )){
// 160 return 1;
// 161 } else {
// 162 return 3;
// 163 }
// 164 } //fim 1 if/else
// 165 } //fim função verifica_jogo
// 166
// 167
// 168 Exercicio 05:
// 169 Gere um número aleatório entre 1 e 100. Peça ao usuário para adivinhar o número e diga
// se ele adivinhou muito baixo, muito alto ou exatamente certo.
// 170 Conte quantos palpites o usuário fez e, quando o jogo terminar, imprima isso.
// 171
// 172 import 'dart:io';
// 173 import 'dart:convert';
// 174 import 'dart:math';
// 175 Random random = new Random();
// 176
// 177 void main() {
// 178
// 179
// 180 int contador = 0;
// 181 int numeroPensado = Random().nextInt(99) + 1;
// 182 int verificaResultado = 1;
// 183
// 184 print("""Vou pensar em um número de (1) um a (100) cem e quero ver se o advinha, ok?""");
// 185
// 186 do {
// 187 print("Qual o número que pensei?");
// 188 String resposta = stdin.readLineSync()!;
// 189 int numeroResposta = int.parse(resposta);
// 190 if (verifica_numero(numeroPensado, numeroResposta) == 1){
// 191 print("O número que pensei é maior. Tente outra vez!");
// 192 contador++;
// 193 } else if (verifica_numero(numeroPensado, numeroResposta) == 2){
// 194 print("O número pensado é menor. Tente outra vez!");
// 195 contador++;
// 196 } else {
// 197 verificaResultado = 0;
// 198 }
// 199
// 200 } while(verificaResultado != 0);
// 201
// 202 print("Parabéns, você acertou. Pensei no número $numeroPensado. Acreditei que levaria
// mais tempo para descobrir...kkkkk!");
// 203 print("No total você precisou de ${contador +1} tentativas. Obrigado por sua
// companhia.");
// 204
// 205 }//main
// 206
// 207 int verifica_numero(int numero, int resposta){
// 208 if (numero > resposta){
// 209 return 1; // o número pensado pelo computador é maior
// 210 } else if (numero < resposta){
// 211 return 2; // o número pensado pelo computador é menor
// 212 } else {
// 213 return 0; // o número pensado é igual ao do computador
// 214 }
// 215
// 216 }