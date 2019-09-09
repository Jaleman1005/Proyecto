import 'package:flutter/material.dart';
 
 
class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu',
      home: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _current_index, 
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.view_list),
              title: Text('Categorias')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.textsms),
              title: Text('Foro')
            )
          ],
          
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