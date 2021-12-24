import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "A luta é grande, mas a derrota é certa",
    "Nada que é do pobre funciona",
    "Pra piorar tem que melhorar bastante",
    "Tá facil pra ninguem, mano",
    "Seja feliz. A base de remédios",
    "Sexta feira! O melhor dia para invejar pessoas felizes…",
    "Uma jornada de milhares de quilômetros, as vezes termina mal. Muito mal!",
    "Só dara errado se você tentar",
    "O caminho é longo mas a derrota é certa",
    "Nunca é tarde para comecar a desistir",
    "É só uma fase ruim, logo vai piorar",
    "Você não pode mudar o seu passado. Mas pode estragar o seu futuro",
    "Você é mais fraco do que pensa",
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase";

  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(_frases.length);
    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16), //Espacamento
        //width: double.infinity, //usa toda a largura e altura ocupavel
        /*decoration: BoxDecoration(
          border: Border.all(
            width: 3, color: Colors.blue), // Borda para fins de exibicao
        ),*/
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 17,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),
              ),
              RaisedButton(
                child: Text(
                  "Nova Frase",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: _gerarFrase,
                color: Colors.green,
              )
            ],
          ),
        ),
      ),
    );
  }
}
