import 'dart:io';

void main(List<String> args) {
  print("Digite sua idade");
  int? input = int.tryParse(stdin.readLineSync()!);
  if (input != null) {
    print(input);
  } else {
    print("Não foi possível receber sua idade. Digite Novamente");
    input = int.tryParse(stdin.readLineSync()!);
    print(input);
  }
}
