import 'package:flutter/material.dart';

class deportesPage extends StatefulWidget {
  @override
  _deportesPageState createState() => _deportesPageState();
}

class _deportesPageState extends State<deportesPage>{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text("Deportes"),
      ),
      body: Center(
        child: Text('aqui aparecen las noticias de deportes'),
      ),
    );
  }
}