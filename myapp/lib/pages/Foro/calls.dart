import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DatosForoPage extends StatefulWidget{
  @override
  DatosPageState createState() {
    return new DatosPageState();
  }

}
class DatosPageState extends State<DatosForoPage>{
  final String url = "https://swapi.co/api/people";
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
                decoration: InputDecoration( border: OutlineInputBorder(),labelText: 'Tema a discutir',),
                onSubmitted: (String str) {
                  setState(() { 
                    results = results + "\n" + str;
                    controller.text = "";
                  });
                },
                controller: controller,
              ),TextField(
                decoration: InputDecoration( border: OutlineInputBorder(),labelText: 'Ingresa tu nombre o alias',),
                onSubmitted: (String str) {
                  setState(() { 
                    results = results + "\n" + str;
                    controller.text = "";
                  });
                },
                controller: controller,
              ),TextField(
                decoration: InputDecoration( border: OutlineInputBorder(),labelText: 'Ingresa tu comentario',),
                onSubmitted: (String str) {
                  setState(() { 
                    results = results + "\n" + str;
                    controller.text = "";
                  });
                },
              ),
              new Text(results)
            ],
          ),
        ),
      ),
    );
  }

  Future<String> getJSONData() async {
    var response = await http.get(
        Uri.encodeFull(url),
        headers: {"Accept": "application/json"});
    print(response.body);
    setState(() {
      var dataConvertedToJSON = json.decode(response.body);
      data = dataConvertedToJSON['results'];
    });
    return "Successfull";
  }
}