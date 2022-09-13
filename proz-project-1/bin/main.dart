import 'dart:io';

import 'package:proz_project_1/console.dart';
import 'package:proz_project_1/empresa.dart';
import 'package:proz_project_1/endereco.dart';
import 'package:proz_project_1/socio.dart';

void main() {
  stdout.write('''
O que vc gostaria de fazer?
1-Cadastrar uma empresa?
2-Cadastrar um sócio?
3-Busca empresa por CNPJ
4-Busca empresa por CPF do sócio
5-Listar empresas cadastradas
6-Deletar uma empresa pela id
7-Sair
    ''');
  final opcao = stdin.readLineSync();

  if (opcao == "1") {
    empresa1 = console.cadastrarEmpresa(socio1);
  }
}
