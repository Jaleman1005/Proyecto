

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:startup_namer/models/deportes.dart';
import 'package:startup_namer/services/webservice.dart';
import 'package:startup_namer/utils/constants.dart';

class DeportesListState extends State<DeportesList> {

  List<DeportesArticle> _deportesArticles = List<DeportesArticle>(); 

  @override
  void initState() {
    super.initState();
    _populateNewsArticles(); 
  }

  void _populateNewsArticles() {
   
    Webservice().load(DeportesArticle.all).then((deportesArticles) => {
      setState(() => {
        _deportesArticles = deportesArticles
      })
    });

  }

  ListTile _buildItemsForListView(BuildContext context, int index) {
      return ListTile(
        title: _deportesArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_deportesArticles[index].urlToImage), 
        subtitle: Text(_deportesArticles[index].title, style: TextStyle(fontSize: 20)),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
          itemCount: _deportesArticles.length,
          itemBuilder: _buildItemsForListView,
        )
      );
  }
}

class DeportesList extends StatefulWidget {

  @override
  createState() => DeportesListState(); 
}