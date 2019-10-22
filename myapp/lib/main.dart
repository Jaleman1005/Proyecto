import 'package:flutter/material.dart';
import 'package:news_app/services/repository.dart';
//pages import
import './pages/noticias/home.dart';
void main(){
  NewsRepository _repository=NewsRepository();
   runApp(Categorias(repository:_repository));
   }

class Categorias extends StatelessWidget {
  final NewsRepository repository;
  Categorias({this.repository});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Categorias',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo
      ),
      home: HomePage(repository:repository),
    );
  }
}