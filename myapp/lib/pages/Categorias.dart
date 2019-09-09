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
    return Scaffold(
      body: ListView(
        children: _crearCategorias()
              ),
            );
          }
        
  final opciones = ['Musica','Cine','Deportes','Fama','Clima'];

  List<Widget>  _crearCategorias() {
     
     return opciones.map(( item){
       return Column(
         children: <Widget>[
           ListTile(
             title: Text(item),
           ),
           Divider(),
         ],
       );
     }).toList();
  }
}