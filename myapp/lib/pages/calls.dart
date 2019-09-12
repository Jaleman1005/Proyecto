import 'package:flutter/material.dart';

class DatosForoPage extends StatefulWidget{
  @override
  DatosPageState createState() {
    return new DatosPageState();
  }

}

class DatosPageState extends State<DatosForoPage>{

 Widget build(BuildContext context) {
  return Scaffold(
     appBar: AppBar(
        title: Text('Foro')
      ),
    body: new ListView(
      children: [  
        TextField(
          decoration: InputDecoration( 
            border: OutlineInputBorder(),
            labelText: 'Tema'
          ),
        ),
        TextField(
          decoration: InputDecoration( 
            contentPadding: const EdgeInsets.symmetric(vertical: 80.0),
            border: OutlineInputBorder(),
            hintText: 'Please enter a text',
            labelText: 'Ingrese su comentario'
          ),
        ),
        FloatingActionButton(
            onPressed: () {
              return showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Text("Su comentario ha sido ingresado"),
                  );
                },
              );
            },
            tooltip: 'Show me the value!',
            child: Icon(Icons.message),
          )
      ]   
    )
  );
  
}
}

