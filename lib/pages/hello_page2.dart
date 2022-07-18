import 'package:flutter/material.dart';

class HelloPage2 extends StatelessWidget {
  const HelloPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text('Page 2'),
      ),
      body: _body(context),
    );
  }

  _body(context) {
    return Center(
      child: RaisedButton(
          child: Text("Voltar",
              style: TextStyle(
                  color: Colors.red)),
          onPressed: () => _onClickVoltar(context)),
    );
  }

  _onClickVoltar(context) {
    return Navigator.pop(context, "voltou 2");
  }

}

