  import 'dart:async';

  import 'package:http/http.dart' as http;
  import 'dart:convert';
  class Book{
    final String id;
    final String cover;
    final String author;

    Book({this.id, this.cover, this.author});

    factory Book.fromJson(Map<String, dynamic> json){
      return new Book(
        id: json["ID"],
        cover: json["cover"],
        author: json["author"]
      );
    }
  }


  Future<List<Book>> getData() async{
    final response = await http.get("http://www.etnassoft.com/api/v1/get/?category=libros_programacion&criteria=most_viewed");
    if(response.statusCode == 200){
      var jsonArray = json.decode(response.body.replaceAll("(", " ").replaceAll(")", " ").replaceAll(";", " ")) as List;
      return jsonArray.map(decode).toList();
    }else{
      return new List();
    }
  }

  Book decode(dynamic element){
    return Book.fromJson(element);
  }
