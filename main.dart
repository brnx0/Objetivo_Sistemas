 import 'dart:io';

import 'Calculadora.dart';


void main (){
  

  Calculadora calc = new Calculadora();
 
  
  
  String sair = "0";
  print("------Calculadora--------- \n\n");
  while (sair=="0") {
    calc.operacoes.forEach(print);
    int? escolha = int.parse(stdin.readLineSync()!);
    switch (escolha) {
      case 1:
        // print ("Infome o primeiro valor:");
      
        // calc.n  = stdin.readLineSync()!;
        // calc.validador();
        
        //  bool n1_is_number = calc.isNumeric(calc.n);

        while (calc.validador() == false) {
         print ("Infome o primeiro valor:");
         
         calc.n  = stdin.readLineSync()!;
         calc.validador();
        //  n1  = stdin.readLineSync();
        //  n1_is_number = calc.isNumeric(n1);
        }
        print(calc.n.runtimeType);
        int valor_=int.parse(calc.n);
        print(valor_.runtimeType);
        
        

        print ("Infome o segundo valor:");
        int n2  = int.parse(stdin.readLineSync()!) ;
        num resultado = calc.somar(calc.n, n2);
        print(resultado);

        
        return;
      default:
       
    }


    print("Deseja continuar ?  \n 1-Sim \n 2-Não");
    sair = stdin.readLineSync()!;
  
  }
    
  

  
}
