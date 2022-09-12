import 'dart:io';

import 'package:proz_project_1/company.dart';

void main() {
  var empresa = Company(
      id: id,
      cnpj: cnpj,
      dataDeCadastro: dataDeCadastro,
      razaoSocial: razaoSocial,
      nomeFantasia: nomeFantasia,
      telefone: telefone,
      endereco: endereco,
      cpfDoSocio: cpfDoSocio,
      nomeDoSocio: nomeDoSocio,
      enderecoDoSocio: enderecoDoSocio);
      

  while (true) {
    stdout.write(
        'O que vc gostaria de fazer?(c)adastrar uma empresa? (b)usca empresa por CNPJ ou CPF (d)eletar uma empresa pela id ');
    final line = stdin.readLineSync();
  }
}





 // var id = '1';
  // var cnpj = '123456789';
  // var dataDeCadastro = '01 / 01 / 2000';
  // var razaoSocial = 'Empresa de teste';
  // var nomeFantasia = 'Nome fantasia';
  // var endereco = 'rua alguma' ;
  // var telefone = '123456789';
  // var cpfDoSocio = '369852147';
  // var nomeDoSocio = 'Joana';
  // var enderecoDoSocio = 'rua nenhuma';
  
  // final company = Company(
  //     id: id,
  //     cnpj: cnpj,
  //     dataDeCadastro: dataDeCadastro,
  //     razaoSocial: razaoSocial,
  //     nomeFantasia: nomeFantasia,
  //     telefone: telefone,
  //     endereco: endereco,
  //     cpfDoSocio: cpfDoSocio,
  //     nomeDoSocio: nomeDoSocio,
  //     enderecoDoSocio: enderecoDoSocio);
  // print('Isso é uma classe de empresa $company.id')