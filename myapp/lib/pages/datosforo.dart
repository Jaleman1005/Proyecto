

import 'package:flutter/material.dart';

class DatosForoPage extends StatefulWidget{
  @override
  DatosPageState createState() {
    return new DatosPageState();
  }

}
class DatosPageState extends State<DatosForoPage>{
  List data;
  String results = "";

  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Comentarios"),
        backgroundColor: Colors.red,
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextField(
                decoration: InputDecoration( border: OutlineInputBorder(),labelText: 'Ingresa el comentario',),
                onSubmitted: (String str) {
                  setState(() { 
                    results = results + "\n" + str;
                    controller.text = "";
                  });
                },
                controller: controller,
              ),
              new Text(results)
            ],
          ),
        ),
      ),
    );
  }
}