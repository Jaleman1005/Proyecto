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
      body: 
        CustomScrollView(
            slivers: <Widget>[
              SliverFixedExtentList(
                itemExtent: 50.0,
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Container(
                      alignment: Alignment.center,
                      color: Colors.green[600],
                      child: Text('Categorias $index'),
                    );
                  },
                ),
              ),
            ],
          )
    );
  }
}