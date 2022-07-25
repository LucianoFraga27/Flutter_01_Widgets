import 'package:aula_01/pages/hello_listview.dart';
import 'package:aula_01/pages/hello_page1.dart';
import 'package:aula_01/pages/hello_page2.dart';
import 'package:aula_01/pages/hello_page3.dart';
import 'package:aula_01/utilis/nav.dart';
import 'package:aula_01/widgets/blue_button.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: Icon(Icons.favorite),
            onPressed: (){
              _onClickFab();
            },
          ),
          SizedBox(
            width: 16,
          ),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: (){
              _onClickFab();
            },
          ),
        ],
      )
    );
  }

  _body(BuildContext context) {
    return Container(
      color: Colors.green,
      padding: const EdgeInsets.all(10),
      child: Container(
          color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _text(),
              _pageview(),
              _buttons(),
            ],
          )),
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
    return Image.asset(img_name, fit: BoxFit.cover);
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

  _buttons() {
    return Builder(builder: (BuildContext context) {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BlueButton("ListView",
                  onPressed: () => _onClickNavigator(context, HelloListView())),
              BlueButton("Page 2",
                  onPressed: () => _onClickNavigator(context, HelloPage2())),
              BlueButton("Page 3",
                  onPressed: () => _onClickNavigator(context, HelloPage3()))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BlueButton("Snack", onPressed: () => _OnClickSnack(context)),
              BlueButton("Dialog", onPressed: () => _OnClickDialog(context)),
              BlueButton("Toast", onPressed: () => _OnClickToast)
            ],
          )
        ],
      );
    });
  }

  void _onClickNavigator(BuildContext context, Widget page) async {
    String s = await push(context, page);

    print(">> $s");
  }

  _OnClickSnack(BuildContext context) {
    Scaffold.of(context).showSnackBar(SnackBar(
        content: Text('Olá flutter'),
        action: SnackBarAction(
          textColor: Colors.red,
          label: 'OK', onPressed: () {
          print('Ok');
        },)
    ));
  }

  _OnClickDialog(BuildContext context) {
    showDialog(context: context, builder: (context) {
      return AlertDialog(
        title: Text('Flutter é legal'),
        actions: [
          FlatButton(child: Text('Cancelar!'),
              onPressed: () {
               pop(context, 'Cancelar!');
              }),
          FlatButton(child: Text('Ok!'),
              onPressed: () {
                pop(context, 'Ok!');
              }),
        ],
      );
    });
  }


  _OnClickToast() {
    Fluttertoast.showToast(
        msg: "Flutter é legal",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

  void _onClickFab() {
    print("add");
  }

}