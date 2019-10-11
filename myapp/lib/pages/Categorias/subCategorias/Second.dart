
import 'package:flutter/material.dart';
import 'package:startup_namer/widgets/deportesList.dart';


class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        child: new Center(
          child: DeportesList(),
        ),
      ),
    );
  }
}