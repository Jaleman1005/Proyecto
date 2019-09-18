import 'package:flutter/material.dart';

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
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Musica'),
            decoration: new BoxDecoration(
              image: DecorationImage(
                image: new AssetImage('imagenes/musica.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Deportes'),
            decoration: new BoxDecoration(
              image: DecorationImage(
                image: new AssetImage('imagenes/deportes.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Cine'),
            decoration: new BoxDecoration(
              image: DecorationImage(
                image: new AssetImage('imagenes/cine.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Ciencia y tecnología'),
            decoration: new BoxDecoration(
              image: DecorationImage(
                image: new AssetImage('imagenes/ciencia.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Mundo'),
            decoration: new BoxDecoration(
              image: DecorationImage(
                image: new AssetImage('imagenes/mundo.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Arte, Cultura y entretenimiento'),
            decoration: new BoxDecoration(
              image: DecorationImage(
                image: new AssetImage('imagenes/cultura.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Clima'),
            decoration: new BoxDecoration(
              image: DecorationImage(
                image: new AssetImage('imagenes/clima.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Salud'),
            decoration: new BoxDecoration(
              image: DecorationImage(
                image: new AssetImage('imagenes/salud.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Economía'),
            decoration: new BoxDecoration(
              image: DecorationImage(
                image: new AssetImage('imagenes/economia.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Política'),
            decoration: new BoxDecoration(
              image: DecorationImage(
                image: new AssetImage('imagenes/politica.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    ),
  ],
);
  }
}