

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:startup_namer/models/negociosArticle.dart';
import 'package:startup_namer/services/webservice.dart';
import 'package:startup_namer/utils/constants.dart';

class NegociosListState extends State<NegociosList> {

  List<NegociosArticle> _negociosArticles = List<NegociosArticle>(); 

  @override
  void initState() {
    super.initState();
    _populateNewsArticles(); 
  }

  void _populateNewsArticles() {
   
    Webservice().load(NegociosArticle.all).then((negociosArticles) => {
      setState(() => {
        _negociosArticles = negociosArticles
      })
    });

  }

  ListTile _buildItemsForListView(BuildContext context, int index) {
      return ListTile(
        title: _negociosArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_negociosArticles[index].urlToImage), 
        subtitle: Text(_negociosArticles[index].title, style: TextStyle(fontSize: 20)),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
          itemCount: _negociosArticles.length,
          itemBuilder: _buildItemsForListView,
        )
      );
  }
}

class NegociosList extends StatefulWidget {

  @override
  createState() => NegociosListState(); 
}