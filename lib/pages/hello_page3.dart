import 'package:flutter/material.dart';

import '../widgets/blue_button.dart';

class HelloPage3 extends StatelessWidget {
  const HelloPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text('Page 3'),
      ),
      body: _body(context)
    );
  }

_body(context) {
  return Center(
    child: BlueButton(
            "Voltar",
            onPressed: () => _onClickVoltar(context)),
  );
}

_onClickVoltar(context) {
  return Navigator.pop(context, "voltou 3");
}

}

