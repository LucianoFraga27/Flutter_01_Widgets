
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
      body: _body(context),
    );
  }

  _body(context) {

    return Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _text(),
          _img(),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _button(),
                  _button(),
                  _button()
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _button(),
                  _button(),
                  _button()
                ],
              )
            ],
          )
        ],
      )
    );
  }

  Text _text() {
    return Text(
      'Hello world',
      style: TextStyle(
        fontSize: 30,
        color: Colors.white,
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
        "assets/images/dog1.jpg",
    );
  }
}
