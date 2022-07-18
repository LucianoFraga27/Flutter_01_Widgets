import 'package:flutter/material.dart';

class BlueButton extends StatelessWidget {

  String texto;
  Function onPressed;
  Color cor;
  BlueButton(this.texto, {required this.onPressed, this.cor = Colors.blue});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        color: cor,
        child: Text(
            texto,
            style: TextStyle(
                color: Colors.black,
                fontSize: 25
            )),
        onPressed: () => onPressed()
    );
  }
}
