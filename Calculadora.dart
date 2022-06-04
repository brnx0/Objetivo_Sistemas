class Calculadora{
List<String> operacoes =["OPERAÇÕES", "[1] Somar" , "[2] Subtrair", "[3] Multiplicar", "[4] Dividir"  ];

dynamic valor_1;
dynamic valor_2;

bool validador(valor){
  bool v = isNumeric(valor);
  return v;
}
bool isNumeric(s) {
   if (s == null) {
       return false;
   }
    
    return double.tryParse(s) != null;
   }



num somar(valor1, valor2){
  return valor1+valor2;

}



num subtrair(valor1, valor2){
  return valor1-valor2;
}

num multiplicar(valor1, valor2){
  return valor1*valor2;
}

num dividir(valor1, valor2){
  return valor1/valor2;

}
  

}