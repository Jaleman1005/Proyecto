import 'package:flutter/material.dart';
 
 
class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Menu'),
        ),
        body: Center(
          child: Container(
            child: Text('funciona'),
          ),
        ),
      ),
    );
  }
}