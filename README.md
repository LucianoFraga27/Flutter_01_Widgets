# Sobre projeto: 

Aprender sobre os Widgets 



# Anotações das Aulas

# aula_01

MaterialApp() -> widget criado apenas uma vez

# Aula_02

Scaffold() -> widget criado em cada tela

# Aula_03 

// Decorando texto

Text('Texto', style: TextStyle(
fontSize: 30,  color: Colors.red,
fontWeight: FontWeight.bold,
fontStyle: FontStyle.italic,
decoration: TextDecoration.underline, //overline
decorationColor: Colors.amber,
decorationStyle: TextDecorationStyle.dashed, //Traçado)),

# Aula_04 

Organizando código

# Aula 05

Trabalhando com imagens
Criar pasta 'assets' depois criar 'images'

Image.network("link");

Em pubspec.yaml
assets:
- assets/images/

Image.asset(
"assets/images/dog2.jpg",
width: 300,
height: 300,
fit: BoxFit.contain
// contain: melhor possivel no tamanho
// fill: estica a imagem
// cover: completa com recorte
);

SizedBox.expand(
child: _img()
) -> Se a imagem quiser | fit: BoxFit.cover

# Aula 06

Botões

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

void _onClickOk(){print('clicou')}

# Aula 07

Colunas e linhas

Column/Row(
mainAxisSize: MainAxisSize.min // Para ter apenas o tamanho necessario, por padrão essa função recebe Max
children: [
item,
item,
item
]
)

# Aula 08

Pegando o tamanho da tela

Size size = MediaQuery.of(context).size;

crossAxisAlignment: CrossAxisAlignment.center, //eixo cruzado | padrao center
.start / .end 

# Aula 09

Carrossel de imagens

Pageview(
children:[
img1,
img2,...
]
)

# Aula 10

Margem
Only: definir os lugares
All: em todos os lados (20)
margin: EdgeInsets.only(top: 20, left: 20)
top, bottom, left, right

Padding
padding: const EdgeInsets.all(10)

# Aula 11

SingleChildScrollView()

Adicionando rolagem na tela


# Aula 12

Navegação em telas

void _onClickOk(BuildContext context){
Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
return HelloPage1();
}));

1- Passar o parametro context
2- Passar o builder
3 - retornar a pagaina dentro do builder



# Aula 13

Quando quero dividir minha tela em componentes
para que não ocorra erro, é melhor utilizar Expanded()

Expanded(
flex: 1,
child: PageView(),
)

# Aula 14

Lista

ListView(
itemExtent: 100, //define o tamanho de cada item na sua lista
children : 
[
item,
item
])

ListView.builder(
itemCount: imgs.lenght,
item.Builder: (context, index),
return imgs[index];

# Aula 15

Stack: sobre por um item no outro

return Stack(
    children:[
    imgs[index],
    Container(
        alignment: Alignment.topCenter // Alinhamento do texto no STACK
        img_nome
)])

# Aula 16

decoration
decorando container

container(
decoration: BoxDecoration(
color:,
borderRadius: BorderRadius.circular(),
)
)

# Aula 17
GridView

GridView.builder(
gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),//Numero de colunas
)

# Aula 18

Botões com ações na APPBAR

actions: [
IconButton(
icon: Icon(Icons.list),onPressed: () {
print('Lista');
},
),

# Aula 19

Clicar na foto e enviar a foto como parametro
Por dentro do array children junto a imagem

GestureDetector(
onTap: () {
push(context, DogPage(dog));
},
)

# Aula 20

Alertas

Snack

Cria um builder em _buttons para enviar o context

_OnClickSnack(BuildContext context) {
Scaffold.of(context).showSnackBar(SnackBar(
content: Text('Olá flutter'),
action: SnackBarAction(
textColor: Colors.red,
label:'OK',onPressed: (){
print('Ok');
},)
));
}


# Aula 21

Alertas / Cancelar e Confirmar 

Dialog

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

# Aula 22 

Alertas / 

Toast

1- instalar plugin dart
-> pub.dev
-> toast
-> fluttertoast
-> copia dependencia e coloca no arquivo pubspec.yaml
-> reinicia aplicação
-> importa o fluttertoast
-> coloca o codigo de exemplo do site

# Aula 23

Material design

floatingActionButton em Scaffold