import 'package:startup_namer/pages/App.dart';
import 'package:startup_namer/pages/foro.dart';
import 'package:startup_namer/pages/game.dart';
import 'package:startup_namer/pages/perfil.dart';
import 'package:startup_namer/widgets/newsList.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main()=> runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    return new MaterialApp(
        theme: new ThemeData(primarySwatch: Colors.red),
        home: new HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Noticias Konrad"),
        elevation: defaultTargetPlatform ==TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Claire Salazar"),
              accountEmail: new Text("carlosdrm@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.white,
                child: new Text("User"),
              ),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  backgroundColor: Colors.white,
                  child: new Icon(Icons.supervisor_account),
                )
              ],
            ),
            new ListTile(
              title: new Text("Noticias"),
              trailing: new Icon(Icons.new_releases),
              onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder:(BuildContext context)=>
                            new MyApp()));
              },
            ),
            new ListTile(
              title: new Text("Favoritos"),
              trailing: new Icon(Icons.star),
            ),
            new ListTile(
              title: new Text("Foro"),
              trailing: new Icon(Icons.chat),
              onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder:(BuildContext context)=>
                            new ForoPage()));
              },
            ),
            new ListTile(
              title: new Text("Perfil"),
              trailing: new Icon(Icons.supervised_user_circle),
              onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder:(BuildContext context)=>
                            new PerfilPage()));
              },
            ),
            new ListTile(
              title: new Text("Retos"),
              trailing: new Icon(Icons.supervised_user_circle),
              onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder:(BuildContext context)=>
                            new RetosPage()));
              },
            ),
            new ListTile(
              title: new Text("Cerrar"),
              trailing: new Icon(Icons.exit_to_app),
              onTap: ()=>Navigator.of(context).pop(),
            )
          ],
        ),
      ),
      body: new Container(
        child: new Center(
          child: NewsList(),
        ),
      ),
    );
  }
}