import 'package:flutter/material.dart';

class StatusPage extends StatefulWidget{
  
  @override
  StatusPageState createState() {
    return new StatusPageState();
  }
}

class StatusPageState extends State<StatusPage>{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
          body: new ListView(
              children: [  
                const ListTile(
                leading: Icon(Icons.mail),
                title: Text('FORO'),
                subtitle: Text('En este espacio podras compartir tus oponiones con otros usuarios, los temas sugeridos son:'),
                ),  
                const ListTile(
                leading: Icon(Icons.airplanemode_active),
                title: Text('Internacional')
                ),
                 const ListTile(
                leading: Icon(Icons.mood),
                title: Text('Deportes')
                ),
                 const ListTile(
                leading: Icon(Icons.local_hotel),
                title: Text('Salud')
                ),
                 const ListTile(
                leading: Icon(Icons.compare_arrows),
                title: Text('Politica')
                ),
                 const ListTile(
                leading: Icon(Icons.assistant_photo),
                title: Text('Nacionales')
                ),
                 const ListTile(
                leading: Icon(Icons.motorcycle),
                title: Text('Entretenimiento')
                ),
                 const ListTile(
                leading: Icon(Icons.attach_money),
                title: Text('Economia')
                ),
                ButtonTheme.bar( // make buttons use the appropriate styles for cards
                child: ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      child: const Text('CREAR FORO'),
                      onPressed: () { /* ... */ },
                      )
                    ]              
                  )
                ) 
              ]
        )
      )
    );  
}
Widget _buildItem(String textTitle) {
  return new ListTile(
      title: new Text(textTitle),
      leading: new Icon(Icons.comment),
  );
}
}