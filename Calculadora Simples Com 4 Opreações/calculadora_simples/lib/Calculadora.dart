import 'package:flutter/material.dart';

class Calculadora  extends StatefulWidget {
  @override
  State createState() => new CalculadoraState();
}

class CalculadoraState extends State<Calculadora> {
  //metodos de calculos

  //metodo build que constroi a estrutura do app
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Calculadora - Simples"),
      ),
      body: new Container(
      padding: const EdgeInsets.all(40.0),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center ,
        children: <Widget>[
          new Text(
            "Resultado: $resultado",
            style: new TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.greenAccent),
            ),
            //campo de texto input 1
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Valor 1"),
              controller: campoValor1
            ),
            //input valor 24
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Valor 2"),
              controller: campoValor2,
            ),
            //espaçamemto de cores dosinput
            new Padding(padding: const EdgeInsets.only(top: 20)),

            //nova linha
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget> [
                
                new MaterialButton(
                  child: new Text(
                    "+",
                    style: new TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                    ),
                  
                  color: Colors.blueAccent,
                  onPressed: somar),
                  //botão de subtrair
                  new MaterialButton(
                    child: new Text(
                      "-",
                      style: new TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                      ),
                      color: Colors.blueAccent,
                      onPressed: subtrair,
                  ),
                  //botão de multiplicar
                  new MaterialButton(
                    child: new Text(
                      "x",
                      style: new TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                      ),
                    color: Colors.blueAccent,
                    onPressed: multiplicar,),
                  //botão dividir
                  new MaterialButton(
                    child: new Text(
                      "/",
                      style: new TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                      ),
                    color: Colors.blueAccent,
                    onPressed: dividir,)
              ]
            )
          ],
        ),
      ),
    );
  }//fecha o build

  // atributos
var valor1;
var valor2;
var resultado;

TextEditingController campoValor1 = new TextEditingController(text: "");
TextEditingController campoValor2 = new TextEditingController(text: "");

  void somar() {
    setState(() {
      valor1 = num.parse(campoValor1.text);
      valor2 = num.parse(campoValor2.text);
      resultado = valor1 + valor2;
    });
  }

  void subtrair() {
    setState(() {
      valor1 = num.parse(campoValor1.text);
      valor2 = num.parse(campoValor2.text);
      resultado = valor1 - valor2;
    });
  }

  void multiplicar () {
    setState((){
      valor1 = num.parse(campoValor1.text);
      valor2 = num.parse(campoValor1.text);

      resultado = valor1 * valor2; 
    });
  }

  void dividir () {
    setState((){
      valor1 = num.parse(campoValor1.text);
      valor2 = num.parse(campoValor2.text);
      resultado = valor1 / valor2;
    });
  }
}//fecha aclasse

