import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget{
  @override

  State createState() => new CalculadoraState();
}
class CalculadoraState extends State<Calculadora>{
//Métodos de Cálculos

//Método build(que constrói a estrutura no app)
@override
Widget build(BuildContext context){
 return Scaffold(
    appBar: new AppBar(title: new Text(": : Calculadora - Simples : :")),
      body: new Container(
        padding: const EdgeInsets.all(40.0),
       child: new Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            // Resultado do cálculo
            new Text(
              "Resultado: $resultado",
              style: new TextStyle(
                 fontSize: 28,
                 fontWeight: FontWeight.normal,
                 color: Colors.blueGrey),
            ),

            // Campo de texto(input do valor 1)
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Informe o primeiro valor"),
              controller: campoValor1,
            ),

            // Campo de texto(input do valor 1)
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Informe o segundo valor"),
              controller: campoValor2,
            ),

            // Espaçamento depois dos inputs
            new Padding(padding: const EdgeInsets.only(top: 25)),            

            // Nova linha(row)
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget> [
                new MaterialButton(
                  
                  //Botão de adição
                   child: new Text(
                     "+",
                     style: new TextStyle(
                       fontSize: 24,
                        fontWeight: FontWeight.bold,
                       color: Colors.white,
                     ),
                   ),
                    color: Colors.grey,
                  onPressed: somar
                ),
                  
                  //Botão de subtração
                  new MaterialButton(
                    child: new Text(
                      "-",
                        style: new TextStyle(
                          fontSize: 24,
                           fontWeight: FontWeight.bold,
                          color: Colors.white, 
                       ),
                    ),
                    color: Colors.grey,
                  onPressed: subtrair,
                  ),

                  //Botão de divisão
                  new MaterialButton(
                    child: new Text(
                     "/",
                       style: new TextStyle(
                          fontSize: 24,
                           fontWeight: FontWeight.bold,
                          color: Colors.white,
                      ),
                    ),
                     color: Colors.grey,
                    onPressed: dividir,
                  ),

                  //Botão de Multiplicação
                  new MaterialButton(
                    child: new Text(
                      "*",
                        style: new TextStyle(
                          fontSize: 24,
                           fontWeight: FontWeight.bold,
                          color: Colors.white,
                       ),
                    ),
                      color: Colors.grey,
                     onPressed: multiplicar,
                  )
                ],
              ),

               //Espaçamento depois dos botões
               new Padding(padding: const EdgeInsets.only(top: 20)),

               //Novo botão 
               new Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: <Widget> [
                   new MaterialButton(
                    child: new Text(
                      "Deletar",
                        style: new TextStyle(
                         fontSize: 24,
                         fontWeight: FontWeight.normal,
                         color: Colors.white
                        ),
                    ),
                      color: Colors.indigoAccent,
                       onPressed: deletar,
                   ),
                 ],
                )
              ],
            ),
          ),
        );
      }//Fecha o método build

  // Atributos
  num valor1 = 0;
  num valor2 = 0;
  String resultado = "";

  TextEditingController campoValor1 = new TextEditingController(text: "");
  TextEditingController campoValor2 = new TextEditingController(text: "");
 
  // Métodos usados para calcular
  void somar() {
    setState(() {
      valor1 = num.parse(campoValor1.text);
      valor2 = num.parse(campoValor2.text);
       resultado = (valor1 + valor2).toStringAsFixed(2);
    });
  } 
  void subtrair() {
    setState(() {
      valor1 = num.parse(campoValor1.text);
      valor2 = num.parse(campoValor2.text);
       resultado = (valor1 - valor2).toStringAsFixed(2);;
    });
  } 
  void dividir() {
    setState(() {
      valor1 = num.parse(campoValor1.text);
      valor2 = num.parse(campoValor2.text);
       resultado = (valor1 / valor2).toStringAsFixed(2);
    });
  } 
  void multiplicar() {
    setState(() {
      valor1 = num.parse(campoValor1.text);
      valor2 = num.parse(campoValor2.text);
       resultado = (valor1 * valor2).toStringAsFixed(2);
    });
  }
  //Limpa os campos
  void deletar () {
    setState(() {
      resultado = "";
       campoValor1.text = "";
       campoValor2.text = "";
    });
  }
 }//Fecha classe
