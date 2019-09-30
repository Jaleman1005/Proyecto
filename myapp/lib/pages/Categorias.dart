import 'package:flutter/material.dart';
import 'package:startup_namer/pages/FiltosCategorias/deportes.dart';
import 'package:startup_namer/pages/FiltosCategorias/musica.dart';

class CategoriasPage extends StatefulWidget{
  @override
  CategoriasPageState createState() {
    return new CategoriasPageState();
  }
  
}

class CategoriasPageState extends State<CategoriasPage> {

  @override
  Widget build(BuildContext context) {
    return 
      CustomScrollView(
  primary: false,
  slivers: <Widget>[
    SliverPadding(
      padding: const EdgeInsets.all(20),
      sliver: SliverGrid.count(
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Cartas(
            text: 'Musica',
            assetimage: 'imagenes/musica.jpg',
            url: MusicaPage(),
          ),
          Cartas(
            text: 'Deportes',
            assetimage: 'imagenes/deportes.jpg',
            url: DeportesPage(),
          ),
          Cartas(
            text: 'Cine',
            assetimage: 'imagenes/cine.jpg',
            url: CategoriasPage(),
          ),
          Cartas(
            text: 'Ciencia y tecnología',
            assetimage: 'imagenes/ciencia.jpg',
            url: CategoriasPage(),
          ),
          Cartas(
            text: 'Mundo',
            assetimage: 'imagenes/mundo.jpg',
            url: CategoriasPage(),
          ),
          Cartas(
            text: 'Arte, Cultura y entretenimiento',
            assetimage: 'imagenes/cultura.jpg',
            url: CategoriasPage(),
          ),
          Cartas(
            text: 'Clima',
            assetimage: 'imagenes/clima.jpg',
            url: CategoriasPage(),
          ),
          Cartas(
            text: 'Salud',
            assetimage: 'imagenes/salud.jpg',
            url: CategoriasPage(),
          ),
          Cartas(
            text: 'Economía',
            assetimage: 'imagenes/economia.jpg',
            url: CategoriasPage(),
          ),
          Cartas(
            text: 'Política',
            assetimage: 'imagenes/politica.jpg',
            url: CategoriasPage(),
          ),
        ],
      ),
    ),
  ],
);
  }
}

class Cartas extends StatelessWidget {
  final String assetimage;
  final String text;
  final Widget url;
  const Cartas({
    Key key,
    @required this.assetimage,
    @required this.text,
    @required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
      onTap: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => this.url),
                  );
              }, // handle your onTap here
      child: Container(
            padding: const EdgeInsets.all(8),
            child: Text(this.text),
            decoration: new BoxDecoration(
              image: DecorationImage(
              image: new AssetImage(this.assetimage),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}