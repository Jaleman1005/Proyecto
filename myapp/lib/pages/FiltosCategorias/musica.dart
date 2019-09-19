import 'package:flutter/material.dart';

class musicaPage extends StatefulWidget {
  @override
  _musicaPageState createState() => _musicaPageState();
}

class _musicaPageState extends State<musicaPage>{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text("Musica"),
      ),
      body: Center(
        child: Text('aqui aparecen las noticias de musica'),
      ),
    );
  }
}