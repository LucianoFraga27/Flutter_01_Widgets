# Sobre projeto: 

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

