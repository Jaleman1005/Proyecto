import 'package:flutter/material.dart';

class Noticias extends StatelessWidget{
  final String title;

  Noticias(this.title);
  
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: Center(
        child: new Text("Pagina de Noticias"),
      ),
    );
  }
}