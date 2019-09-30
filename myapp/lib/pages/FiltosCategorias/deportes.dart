import 'package:flutter/material.dart';

class DeportesPage extends StatefulWidget {
  @override
  _DeportesPageState createState() => _DeportesPageState();
}

class _DeportesPageState extends State<DeportesPage>{
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