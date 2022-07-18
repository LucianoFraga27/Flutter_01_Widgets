
import 'package:aula_01/pages/hello_page1.dart';
import 'package:aula_01/pages/hello_page2.dart';
import 'package:aula_01/pages/hello_page3.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text("Hello Flutter"),
        centerTitle: true,
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {

    return Container(
      color: Colors.green,
      padding: const EdgeInsets.all(10),
      child: Container(
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _text(),
            _pageview(),
            _buttons(context),
          ],
        )
      ),
    );
  }

  Container _pageview() {
    return Container(
          margin: EdgeInsets.all(10),
          height: 300,
          child: PageView(
            children: [
              _img("assets/images/dog1.jpg"),
              _img("assets/images/dog2.jpg"),
              _img("assets/images/dog3.jpg"),
              _img("assets/images/dog4.jpg"),
              _img("assets/images/dog5.jpg")
            ],
          ),
        );
  }

  _img(String img_name) {
    return Image.asset(
        img_name,
        fit: BoxFit.cover
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

  _buttons(BuildContext context) {
    return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _button(context,"ListView",() => _onClickNavigator(context,HelloPage1())),
                _button(context,"Page 2", () => _onClickNavigator(context,HelloPage2())),
                _button(context,"Page 3", () => _onClickNavigator(context,HelloPage3()))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _button(context,"Snack", _OnClickSnack),
                _button(context,"Dialog",_OnClickDialog),
                _button(context,"Toast", _OnClickToast)
              ],
            )
          ],
        );
  }
  _button(BuildContext context,String texto, Function onPressed){
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

  void _onClickNavigator(BuildContext context, Widget page){
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return page;
    }));
  }

  _OnClickSnack() {
  }

  _OnClickToast() {

  }

  _OnClickDialog() {
  }

}
