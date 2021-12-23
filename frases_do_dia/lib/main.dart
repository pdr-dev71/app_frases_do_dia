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
            children: <Widget>[
              Image.asset("images/logo.png"),
              Text(
                "Clique abaixo para gerar uma frase",
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
                onPressed: () => {},
                color: Colors.green,
              )
            ],
          ),
        ),
      ),
    );
  }
}
