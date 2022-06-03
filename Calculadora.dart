class Calculadora{
List<String> operacoes =["OPERAÇÕES", "1-Somar" , "2-Subtrair", "3-Dividir", "4-Subtrair"  ];

dynamic n;

bool validador(){
  bool v = isNumeric(n);
  return v;
}
bool isNumeric(s) {
   if (s == null) {
       return false;
   }
    return double.tryParse(s) != null;
   }



num somar(n1, n2){

  num result = n1+n2;
  return result;

}



num subtrair(n1, n2){

  num result = n1+n2;
  return result;

}
num multiplicar(n1, n2){

  num result = n1+n2;
  return result;

}

num dividir(n1, n2){

  num result = n1+n2;
  return result;

}
  

}