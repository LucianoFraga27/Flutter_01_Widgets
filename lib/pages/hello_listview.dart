import 'package:flutter/material.dart';

class HelloListView extends StatelessWidget {
  const HelloListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView')
      ),
      body: _body(),
    );
  }
}

 _body() {
  return ListView(
    children: [
      _img("assets/images/dog1.jpg"),
      _img("assets/images/dog2.jpg"),
      _img("assets/images/dog3.jpg"),
      _img("assets/images/dog4.jpg"),
      _img("assets/images/dog5.jpg")
    ],
  );
}
_img(String img_name) {
  return Image.asset(
      img_name,
      fit: BoxFit.cover
  );
}