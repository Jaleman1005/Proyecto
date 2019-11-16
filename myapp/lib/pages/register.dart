import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news_app/pages/login.dart';

class RegistroPage extends StatefulWidget {
  RegistroPage({Key key}) : super(key: key);

  RegistroPageState createState() => RegistroPageState();
}

class RegistroPageState extends State<RegistroPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Registro usuario"),
        actions: <Widget>[],
      ),
      body: new Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Form(
                    child: Container(
                  padding: const EdgeInsets.all(50.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new Text("Datos de Inicio",
                            style: TextStyle(fontSize: 20.0)),
                        new TextFormField(
                          decoration: new InputDecoration(hintText: "Correo electrónico"),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        new TextFormField(
                          decoration:
                              new InputDecoration(hintText: "Repetir Correo electrónico"),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        new TextFormField(
                          decoration:
                              new InputDecoration(hintText: "Contraseña"),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                        ),
                        new TextFormField(
                          decoration: new InputDecoration(
                              hintText: "Repetir Contraseña"),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                        ),
                        new Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                        ),
                        new Text("Datos Personales",
                            style: TextStyle(fontSize: 20.0)),
                        new TextFormField(
                          decoration: new InputDecoration(hintText: "Nombre"),
                          keyboardType: TextInputType.text,
                        ),
                        new TextFormField(
                          decoration: new InputDecoration(hintText: "Apellido"),
                          keyboardType: TextInputType.text,
                        ),
                        new TextFormField(
                          decoration: new InputDecoration(hintText: "Celular"),
                          keyboardType: TextInputType.number,
                        ),
                        new Padding(
                          padding: const EdgeInsets.only(top: 25.0),
                        ),
                        new MaterialButton(
                          color: Colors.teal,
                          textColor: Colors.white,
                          child: new Text("Registrarse"),
                          onPressed: () => {},
                        ),
                        new MaterialButton(
                          color: Colors.red,
                          textColor: Colors.white,
                          child: new Text("Cancelar"),
                          onPressed: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()))
                          },
                        ),
                      ],
                    ),
                  ),
                )),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
