
import 'dart:convert';
import 'package:startup_namer/services/webservice.dart';
import 'package:startup_namer/utils/constants.dart';


class DeportesArticle {
  
  final String title; 
  final String descrption; 
  final String urlToImage; 

  DeportesArticle({this.title, this.descrption, this.urlToImage});

  factory DeportesArticle.fromJson(Map<String,dynamic> json) {
    return DeportesArticle(
      title: json['title'], 
      descrption: json['description'], 
      urlToImage: json['urlToImage'] ?? Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL
    );
  
}

  static Resource<List<DeportesArticle>> get all {
    
    return Resource(
      url: Constants.HEADLINE_NEWS_DEPORTES,
      parse: (response) {
        final result = json.decode(response.body); 
        Iterable list = result['articles'];
        return list.map((model) => DeportesArticle.fromJson(model)).toList();
      }
    );

  }

}