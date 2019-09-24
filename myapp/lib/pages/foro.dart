import 'package:flutter/material.dart';
import 'calls.dart';



class ForoPage extends StatefulWidget{
  
  @override
  ForoPageState createState() {
    return new ForoPageState();
  }
}

class ForoPageState extends State<ForoPage>{
 @override
  Widget build(BuildContext context) {
    // Declare some constants
    final double myTextSize = 30.0;
    final double myIconSize = 40.0;
    final TextStyle myTextStyle =
        TextStyle(color: Colors.grey, fontSize: myTextSize);

    var column = Column(
      // Makes the cards stretch in horizontal axis
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        // Setup the card
        MyCard(
            // Setup the text
            title: Text("Economia",style: myTextStyle),
            icon:Icon(Icons.monetization_on, size: myIconSize, color: Colors.red),
            direccion: RaisedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DatosForoPage() ),
                );
              },
              child: Text('Iniciar Discusion'),
            ),
            ),
        MyCard(
            title: Text("Politica",style: myTextStyle,),
            icon: Icon(Icons.location_city, size: myIconSize, color: Colors.blue),
            direccion: RaisedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DatosForoPage() ),
                );
              },
              child: Text('Iniciar Discusion'),
            ),
            ),
        MyCard(
            title: Text("Deportes",style: myTextStyle,),
            icon: Icon(Icons.shutter_speed,size: myIconSize, color: Colors.amber),
            direccion: RaisedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DatosForoPage() ),
                );
              },
              child: Text('Iniciar Discusion'),
            ),            
            ),
        MyCard(
            title: Text("Entretenimiento",style: myTextStyle,),
            icon: Icon(Icons.screen_lock_landscape, size: myIconSize, color: Colors.green),
            direccion: RaisedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DatosForoPage() ),
                );
              },
              child: Text('Iniciar Discusion'),
            ),
            ),
        MyCard(
            title: Text("Viajes",style: myTextStyle,),
            icon: Icon(Icons.airport_shuttle,size: myIconSize, color: Colors.amber),
            direccion: RaisedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DatosForoPage() ),
                );
              },
              child: Text('Iniciar Discusion'),
            ),
            ),
      ],
    );

    return Scaffold(
      body: Container(
        // Sets the padding in the main container
        padding: const EdgeInsets.only(bottom: 2.0),
        child: Center(
          child: SingleChildScrollView(child: column),
        ),
      ),
    );
    ;
  }
}

// Create a reusable stateless widget
class MyCard extends StatelessWidget {
  final Widget icon;
  final Widget title;
  final Widget direccion;

  // Constructor. {} here denote that they are optional values i.e you can use as: MyCard()
  MyCard({this.title, this.icon, this.direccion});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 1.0),
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[this.title, this.icon, this.direccion],
          ),
        ),
      ),
    );
  }
}