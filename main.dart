 import 'dart:io';

import 'Calculadora.dart';


void main (){
  
  int sair = 0;
  print("------Calculadora--------- \n\n");
  while (sair == 0) { // While pra manter um loop caso deseje mais de uma operação 
  Calculadora calc = new Calculadora();
    calc.operacoes.forEach(print);//Menu 
    int escolha = int.parse(stdin.readLineSync()!);
    switch (escolha) {
      case 1: //SOMAR 
        while (calc.validador(calc.valor_1) == false) {
         print ("Infome o primeiro valor:");
         calc.valor_1  = stdin.readLineSync()!;
         calc.validador(calc.valor_1);
        }
        int valor_1=int.parse(calc.valor_1);
        while (calc.validador(calc.valor_2) == false) {
         print ("Infome o segundo valor:");
         calc.valor_2  = stdin.readLineSync()!;
         calc.validador(calc.valor_2);
        }
        int valor_2=int.parse(calc.valor_2);
        num resultado = calc.somar(valor_1, valor_2);
        print("$valor_1 + $valor_2 = $resultado");
        break;
      case 2: //SUBTRAIR
       while (calc.validador(calc.valor_1) == false) {
         print ("Infome o primeiro valor:");
         calc.valor_1  = stdin.readLineSync()!;
         calc.validador(calc.valor_1);
        }
        int valor_1=int.parse(calc.valor_1);
        while (calc.validador(calc.valor_2) == false) {
         print ("Infome o segundo valor:");
         calc.valor_2  = stdin.readLineSync()!;
         calc.validador(calc.valor_2);
        }
        int valor_2=int.parse(calc.valor_2);
        num resultado = calc.subtrair(valor_1, valor_2);
        print("$valor_1 - $valor_2 = $resultado");
        break;
      case 3: //MULTIPLICAR
       while (calc.validador(calc.valor_1) == false) {
         print ("Infome o primeiro valor:");
         calc.valor_1  = stdin.readLineSync()!;
         calc.validador(calc.valor_1);
        }
        int valor_1=int.parse(calc.valor_1);
        while (calc.validador(calc.valor_2) == false) {
         print ("Infome o segundo valor:");
         calc.valor_2  = stdin.readLineSync()!;
         calc.validador(calc.valor_2);
        }
        int valor_2=int.parse(calc.valor_2);
        num resultado = calc.multiplicar(valor_1, valor_2);
       print("$valor_1 * $valor_2 = $resultado");
        break;
      case 4: //DIVIDIR
       while (calc.validador(calc.valor_1) == false) {
         print ("Infome o primeiro valor:");
         calc.valor_1  = stdin.readLineSync()!;
         calc.validador(calc.valor_1);
        }
        int valor_1=int.parse(calc.valor_1);
        while (calc.validador(calc.valor_2) == false) {
         print ("Infome o segundo valor:");
         calc.valor_2  = stdin.readLineSync()!;
         calc.validador(calc.valor_2);
        }
        int valor_2=int.parse(calc.valor_2);
        num resultado = calc.dividir(valor_1, valor_2);
        print(Process.runSync("cls", ["cls"], runInShell: true).stdout);
        print("$valor_1 / $valor_2 ="+resultado.toStringAsFixed(2));
        break;
      default:
        print ("Por favor, Digite uma opção valida.");  
    }
    if (escolha > 4 || escolha < 1){
      sair = 0;
    }else{
      print("Deseja Sair ?  \n [1] Sim \n [0]Não");
      sair = int.parse(stdin.readLineSync()!);
    } 
  }
}
