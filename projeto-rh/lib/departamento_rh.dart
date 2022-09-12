import 'dart:io';
import 'package:projeto_rh/funcionario.dart';
import 'package:projeto_rh/vendedor.dart';
import 'package:projeto_rh/atendente.dart';

class DepartamentoRH {
  static Funcionario registrarFuncionario() {
    String nome;
    String cargo;
    double salario;
    String matricula;
    String informarNomeSocial;
    String? nomeSocial;

    print('Digite o nome:');
    nome = stdin.readLineSync()!;
    print('Selecione o cargo: (1) Atendente, (2) Vendedor');
    cargo = stdin.readLineSync()!;
    print('Digite o salario:');
    salario = double.parse(stdin.readLineSync()!);

    while (salario < Funcionario.salarioMinimo) {
      print("Salário abaixo do mínimo atual (R\$1.212,00)");
      print('Digite o salario:');
      salario = double.parse(stdin.readLineSync()!);
    }

    print('Digite a matricula:');
    matricula = stdin.readLineSync()!;
    while (int.parse(matricula).isNaN) {
      print("Matrícula inválida. Digite o número da matrícula");
      matricula = stdin.readLineSync()!;
    }

    print('Deseja informar Nome Social? (S) para Sim, (N) para não.');
    informarNomeSocial = stdin.readLineSync()!.toUpperCase();
    if (informarNomeSocial == "S") {
      print('Digite o nome:');
      nomeSocial = stdin.readLineSync()!;
    }

    if (cargo == "1") {
      return Atendente(
        salario,
        cargo: cargo,
        nome: nome,
        matricula: matricula,
        nomeSocial: nomeSocial,
      );
    } else {
      return Vendedor(
        salario,
        cargo: cargo,
        nome: nome,
        matricula: matricula,
        nomeSocial: nomeSocial,
      );
    }
  }

  static String mostrarDadosFuncionario(Funcionario funcionario) {
    return '''
    Nome: ${funcionario.nome}
    Matrícula: ${funcionario.matricula}
    Salário: ${funcionario.salario}
    ${funcionario.nomeSocial != null ? "Nome Social: ${funcionario.nomeSocial}" : "Tipo: ${funcionario.runtimeType}"}
    ===========================
    ''';
  }
}
