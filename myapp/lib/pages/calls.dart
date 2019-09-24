import 'package:flutter/material.dart';

class DatosForoPage extends StatefulWidget{
  @override
  DatosPageState createState() {
    return new DatosPageState();
  }

}
class DatosPageState extends State<DatosForoPage>{
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
                decoration: InputDecoration(hintText: "Enter text here..."),
                onSubmitted: (String str) {
                  setState(() {
                    results = results + "\n" + str;
                    controller.text = "";
                  });
                },
                controller: controller,
              ),
              Text(results)
            ],
          ),
        ),
      ),
    );
  }
}

