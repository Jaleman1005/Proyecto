import 'package:flutter/material.dart';

import 'package:startup_namer/pages/Categorias.dart';
import 'package:startup_namer/pages/status.dart';
import 'package:startup_namer/pages/noticias.dart';
 
 
class MenuPage extends StatefulWidget {
  @override
  MenuPageState createState() {
    return new MenuPageState();
  }
  
}

class MenuPageState extends State<MenuPage>{

  int _counter = 0;
  int _current_index= 0;

  List<Widget> _children =[
    CategoriasPage(),
    NoticiasPage(),
    StatusPage(),
  ];
  
   void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _onTabBar(int index){
    setState(() {
      _current_index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Menu'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _current_index,
          onTap: _onTabBar,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.view_list),
              title: Text('Categorias')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.receipt),
              title: Text('Noticias')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.textsms),
              title: Text('Foro')
            )
          ],
        ),
        body: _children[_current_index],
    );
  }

}