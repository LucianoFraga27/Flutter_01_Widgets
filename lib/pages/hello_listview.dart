import 'package:flutter/material.dart';

class Dog{
  String nome;
  String foto;

  Dog(this.nome, this.foto);
}

class HelloListView extends StatefulWidget {

  @override
  State<HelloListView> createState() => _HelloListViewState();
}

class _HelloListViewState extends State<HelloListView> {

  bool gridView = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
        actions: [
          IconButton(
            icon: Icon(Icons.list),onPressed: () {
              print('Lista');
              gridView = false;
          },
          ),
          IconButton(
            icon: Icon(Icons.grid_on),onPressed: () {
            print('Grid');
            gridView = true;
          },
          )
        ],
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

  return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
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