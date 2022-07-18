import 'package:flutter/material.dart';

class BlueButton extends StatelessWidget {

  String texto;
  Function onPressed;

  BlueButton(this.texto, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        color: Colors.amber,
        child: Text(
            texto,
            style: TextStyle(
                color: Colors.blue,
                fontSize: 25
            )),
        onPressed: () => onPressed()
    );
  }
}
