
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Flutter"),
        centerTitle: true,
      ),
      body: _body(),
    );
  }

  _body() {
    return Container(
      color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, // Centralizando valores dentro da linha
        // mainAxisAlignment: MainAxisAlignment.end, // Ponto os valores no fim da linha
        // mainAxisAlignment: MainAxisAlignment.start, // Ponto os valores no inicio da linha
        mainAxisSize: MainAxisSize.max,
        children: [
          _button(),
          _button(),
          _button()
        ],
      )
    );
  }

  Text _text() {
    return Text(
      'Hello world',
      style: TextStyle(
        fontSize: 30,
        color: Colors.red,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        decoration: TextDecoration.underline,
        //overline
        decorationColor: Colors.amber,
        decorationStyle: TextDecorationStyle.wavy, //Pontilhado
      ),
    );
  }

  _button(){
    return RaisedButton(
      color: Colors.amber,
      child: Text("OK", style:
      TextStyle(
        color: Colors.blue,
        fontSize: 30
      )),
      onPressed: () => _onClickOk()
    );
  }

  void _onClickOk(){
    print('Clicou!');
  }

  _img() {
    return Image.asset(
        "assets/images/dog2.jpg",
    );
  }
}
