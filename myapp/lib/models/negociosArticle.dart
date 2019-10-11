
import 'dart:convert';
import 'package:startup_namer/services/webservice.dart';
import 'package:startup_namer/utils/constants.dart';


class NegociosArticle {
  
  final String title; 
  final String descrption; 
  final String urlToImage; 

  NegociosArticle({this.title, this.descrption, this.urlToImage});

  factory NegociosArticle.fromJson(Map<String,dynamic> json) {
    return NegociosArticle(
      title: json['title'], 
      descrption: json['description'], 
      urlToImage: json['urlToImage'] ?? Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL
    );
  
}

  static Resource<List<NegociosArticle>> get all {
    
    return Resource(
      url: Constants.HEADLINE_NEWS_NEGOCIOS,
      parse: (response) {
        final result = json.decode(response.body); 
        Iterable list = result['articles'];
        return list.map((model) => NegociosArticle.fromJson(model)).toList();
      }
    );

  }

}