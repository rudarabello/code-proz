//Exercicio 01:
//Crie um programa que peça ao usuário para digitar seu nome e sua idade. Imprima uma
//mensagem que diga quantos anos eles têm para completar 100 anos.
import 'dart:io';
import 'dart:convert';

void main() {
double num1 = 0;
double num2 = 0;
print("Qual o seu nome?");
String nome = stdin.readLineSync()!;
String primeiro_nome = nome.split(" ").first;
print("Qual sua idade?");
int idade = int.parse(stdin.readLineSync()!);
int tempo_falta = 100 - idade;
print("Sr(a) $primeiro_nome faltam-lhe $tempo_falta anos para completar 100 anos.");
} //main
