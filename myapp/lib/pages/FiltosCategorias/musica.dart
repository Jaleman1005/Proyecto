import 'package:flutter/material.dart';

class MusicaPage extends StatefulWidget {
  @override
  _MusicaPageState createState() => _MusicaPageState();
}

class _MusicaPageState extends State<MusicaPage>{
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