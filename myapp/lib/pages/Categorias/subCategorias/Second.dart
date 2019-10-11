
import 'package:flutter/material.dart';
import 'package:startup_namer/widgets/negocios.dart';

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        child: new Center(
          child: NegociosList(),
        ),
      ),
    );
  }
}