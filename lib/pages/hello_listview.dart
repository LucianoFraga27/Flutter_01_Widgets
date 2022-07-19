import 'package:flutter/material.dart';

class Dog{
  String nome;
  String foto;

  Dog(this.nome, this.foto);

}


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
  List<Dog> dogs = [
    new Dog("nome1","assets/images/dog1.jpg"),
    new Dog("nome2","assets/images/dog2.jpg"),
    new Dog("nome3","assets/images/dog3.jpg"),
    Dog("nome4","assets/images/dog4.jpg"),
    Dog("nome5","assets/images/dog5.jpg"),
   ];

  return ListView.builder(
      itemExtent: 300,
      itemCount: dogs.length, //tamanho da lista
      itemBuilder: (BuildContext context, int index){
        Dog dog = dogs[index];
        return Stack(
          fit:StackFit.expand,
          children: [
            _img(dog.foto),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.all(12),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(16)
                ),
                child: Text(
                  dog.nome,
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.deepOrange
                  ),
                ),
              ),
            ),
          ],
        );
    }
  );
}

Image _img(String img_name) {
  return Image.asset(
      img_name,
      fit: BoxFit.cover,
  );
}