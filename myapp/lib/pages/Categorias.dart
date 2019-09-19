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
          contenedores(
            text: 'Musica',
            assetimage: 'imagenes/musica.jpg',
            url: musicaPage(),
          ),
          contenedores(
            text: 'Deportes',
            assetimage: 'imagenes/deportes.jpg',
            url: deportesPage(),
          ),
          contenedores(
            text: 'Cine',
            assetimage: 'imagenes/cine.jpg',
            url: CategoriasPage(),
          ),
          contenedores(
            text: 'Ciencia y tecnología',
            assetimage: 'imagenes/ciencia.jpg',
            url: CategoriasPage(),
          ),
          contenedores(
            text: 'Mundo',
            assetimage: 'imagenes/mundo.jpg',
            url: CategoriasPage(),
          ),
          contenedores(
            text: 'Arte, Cultura y entretenimiento',
            assetimage: 'imagenes/cultura.jpg',
            url: CategoriasPage(),
          ),
          contenedores(
            text: 'Clima',
            assetimage: 'imagenes/clima.jpg',
            url: CategoriasPage(),
          ),
          contenedores(
            text: 'Salud',
            assetimage: 'imagenes/salud.jpg',
            url: CategoriasPage(),
          ),
          contenedores(
            text: 'Economía',
            assetimage: 'imagenes/economia.jpg',
            url: CategoriasPage(),
          ),
          contenedores(
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

class contenedores extends StatelessWidget {
  final String assetimage;
  final String text;
  final Widget url;
  const contenedores({
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