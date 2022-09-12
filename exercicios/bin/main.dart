import 'package:cli/funcionario.dart';
import 'package:cli/codePark2.dart';

void main(List<String> arguments) {
  Funcionario funcionario1 = Funcionario(
    1215,
    nome: "ruda",
    matricula: "2022",
  ); //instancia o funcionario ruda com a classe Funcionario

  // print(ruda.runtimeType);
  // print(ruda.hashCode);
  // print(ruda.toString());
  // print(funcionario1
  //     .nome); //essa informação pertence a classe e não aos seus objetos instanciados
  // funcionario1.baterPonto();
  // funcionario1.baterPonto();
  // funcionario1.baterPonto();
  // funcionario1.baterPonto();
  // funcionario1.baterPonto();
  // print(funcionario1.diasTrabalhados);

  funcionario1.salario = 1500;

  print(funcionario1.getterSalario);

  
}
