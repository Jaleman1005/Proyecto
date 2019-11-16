import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:news_app/bloc/news_listing_bloc.dart';
import 'package:news_app/bloc/news_listing_event.dart';
import 'package:news_app/pages/Foro/foro.dart';
import 'package:news_app/pages/libros/libros.dart';
import 'package:news_app/pages/noticias/newsListing.dart';
import 'package:news_app/services/repository.dart';
import 'package:news_app/widgets/categoryBox.dart';

import 'package:news_app/services/repository.dart';
import 'package:flutter/foundation.dart';
//pages import
import 'package:news_app/pages/login.dart';

class HomePage extends StatefulWidget {
  final NewsRepository repository;

  HomePage({this.repository});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  NewsListingBloc _newsListingBloc;

  @override
  void initState() {
    super.initState();
    _newsListingBloc = NewsListingBloc(newsRepository: widget.repository);
    _newsListingBloc.dispatch(CategorySelectedEvent(category: 'General'));
  }

  @override
  void dispose() {
    super.dispose();
  }

  List<String> category = [
    'General',
    'Sports',
    'Technology',
    'Health',
    'Entertainment',
    'Business',
    'Science'
  ];
  List<IconData> icon = [
    FontAwesomeIcons.globe,
    FontAwesomeIcons.basketballBall,
    FontAwesomeIcons.satellite,
    FontAwesomeIcons.heartbeat,
    FontAwesomeIcons.theaterMasks,
    FontAwesomeIcons.chartBar,
    FontAwesomeIcons.microscope
  ];

  @override
  Widget build(BuildContext context) {
    
    return BlocProvider(
      builder: (BuildContext context) => _newsListingBloc,
      child: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: new AppBar(
          elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
          backgroundColor: Colors.transparent,
          title: new Text("Noticias Konrad"),
          bottom: PreferredSize(
            child: Container(
                width: double.infinity,
                height: 120.0,
                child: new ListView.builder(
                    itemCount: 7,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return CategoryBox(category[index], Icon(icon[index]));
                    })),
            preferredSize: Size(0.0, 120.0),
          ),
        ),
          drawer: new Drawer(
            child: new ListView(
              children: <Widget>[
                new UserAccountsDrawerHeader(
              accountName: new Text("Usuario"),
              accountEmail: new Text("Usuario@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.grey,
                child: new Icon(Icons.account_circle),
              ), 
            ),
            new ListTile(
              title: new Text("Iniciar Sesión"),
              trailing: new Icon(Icons.verified_user),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()),
                );
              }
            ),
                new ListTile(
              title: new Text("Foro"),
              trailing: new Icon(Icons.new_releases),
              onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder:(BuildContext context)=>
                            new ForoPage()));
              },
            ),
                new ListTile(
              title: new Text("Libros"),
              trailing: new Icon(Icons.book),
              onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder:(BuildContext context)=>
                            new LibrosPage()));
              },
            ),
            new ListTile(
              title: new Text("Cerrar"),
              trailing: new Icon(Icons.exit_to_app),
              onTap: ()=>Navigator.of(context).pop(),
            )
              ]
            ),
          ),
        body: ClipRRect(
          borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(0.0),
              topRight: const Radius.circular(48.0)),
          child: Container(
            color: Colors.white,
            height: 800.0,
            child: Column(
              children: <Widget>[
                NewsListing(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
