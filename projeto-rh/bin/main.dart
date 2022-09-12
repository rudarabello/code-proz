import 'dart:io';

import 'package:projeto_rh/departamento_rh.dart';


void main() {
  final funcionario1 = DepartamentoRH.registrarFuncionario();
  final funcionario2 = DepartamentoRH.registrarFuncionario();

  stdout.writeln(DepartamentoRH.mostrarDadosFuncionario(funcionario1));
  stdout.writeln(DepartamentoRH.mostrarDadosFuncionario(funcionario2));
}