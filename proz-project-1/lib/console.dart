import 'dart:io';
import 'package:proz_project_1/empresa.dart';
import 'package:proz_project_1/socio_pf.dart';

class FunctionToConsole {
  List<Empresa> empresas = [];
  void runAppFunction() {
    bool loopTrigger = true;
    do {
      stdout.write('''
O que vc gostaria de fazer? (Digite o número relacionado)
1-Cadastrar uma empresa?
2-Buscar empresa por CNPJ?
3-Busca empresa por CPF do sócio?
4-Listar empresas cadastradas?
5-Deletar uma empresa pela id?
6-Sair?
    ''');
      int option = 0;
      option = int.parse(stdin.readLineSync()!);

      switch (option) {
        case 1:
          registerCompany();
          break;
        case 2:
          findCompanyByCnpj();
          break;
        case 3:
          findCompanyByCpf();
          break;
        case 4:
          listAllComapanys();
          break;
        case 5:
          deleteCompany();
          break;
        case 6:
          loopTrigger = false;
          break;
        default:
      }
    } while (loopTrigger);
  }

  void registerCompany() {
    stdout.write('Razão social da empresa: ');
    String? razaoSocial = stdin.readLineSync();
    stdout.write('Nome fantasia da empresa: ');
    String? nomeFantasia = stdin.readLineSync();
    stdout.write('CNPJ(apenas números): ');
    String? cnpj = stdin.readLineSync();
    stdout.write('Rua: ');
    String? rua = stdin.readLineSync()!;
    stdout.write('Número do endereço(apenas números): ');
    int? numero = int.tryParse(stdin.readLineSync()!);
    stdout.write('Bairro: ');
    String? bairro = stdin.readLineSync();
    stdout.write('Cidade: ');
    String? cidade = stdin.readLineSync();
    stdout.write('Estado: ');
    String? estado = stdin.readLineSync();
    stdout.write('CEP (somente números): ');
    String? cep = stdin.readLineSync()!;
    stdout.write('Telefone (somente números): ');
    String? telefone = stdin.readLineSync();

    registerSocio() {
      stdout.write('Digite a seguir os dados do sócio\n\n');
      stdout.write('Nome: ');
      String nome = stdin.readLineSync()!;
      stdout.write('CPF(apenas números): ');
      String codigoUnico = stdin.readLineSync()!;
      stdout.write('CEP(apenas números): ');
      String cep = stdin.readLineSync()!;
      stdout.write('Rua: ');
      String rua = stdin.readLineSync()!;
      stdout.write('Numero(apenas números): ');
      int? numero = int.tryParse(stdin.readLineSync()!);
      stdout.write('Bairro: ');
      String? bairro = stdin.readLineSync();
      stdout.write('Cidade: ');
      String? cidade = stdin.readLineSync();
      stdout.write('Estado: ');
      String? estado = stdin.readLineSync();
      return SocioPf(
        nome: nome,
        codigoUnico: codigoUnico,
        cep: cep,
        rua: rua,
        numero: numero,
        bairro: bairro,
        cidade: cidade,
        estado: estado,
      );
    }

    final empresa = Empresa(
      nome: razaoSocial,
      nomeFantasia: nomeFantasia,
      codigoUnico: cnpj,
      rua: rua,
      numero: numero,
      bairro: bairro,
      cidade: cidade,
      estado: estado,
      cep: cep,
      telefone: telefone,
      socio: registerSocio(), cnpj: '',
    );
    empresas.add(empresa);

    print('\nEmpresa ${empresa.nomeFantasia} cadastrada!');
  }

  void findCompanyByCnpj() {
    stdout.write(
        'Informe o número do CNPJ da empresa para consulta (somente números): ');
    int?  codigoUnico = int.tryParse(stdin.readLineSync()!);
    final verificaCNPJ = empresas.where((empresa) => empresa.codigoUnico == codigoUnico);

    if (verificaCNPJ.isEmpty) {
      print('CNPJ não encontrado!');
    } else {
      print(verificaCNPJ.elementAt(0).resultadoFinal);
    }
  }

  void listAllComapanys() {}

  void deleteCompany() {}

  void findCompanyByCpf() {}
}
