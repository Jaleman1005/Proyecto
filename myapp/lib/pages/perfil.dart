import 'package:flutter/material.dart';

class PerfilPage extends StatefulWidget {
  
  _PerfilPageState createState() { 
    return new _PerfilPageState();
  }
}

class _PerfilPageState extends State<PerfilPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
         children: <Widget>[
           Header(
             username: 'Shirley R Blake',
             backgroundAsset: 'imagenes/ciencia.jpg',
             userAsset: 'imagenes/perfil.jpg',
           ),
           new Connections(
            foros: 34,
            noticias: 12,
           ),
           Profile(
             text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam nec justo vulputate, finibus nisi suscipit, sagittis tellus. Quisque sit amet sem aliquet, finibus purus ac, ornare felis. In efficitur ipsum nec feugiat molestie. ',
           ),
         ],
    );
  }
}

class Profile extends StatelessWidget {
  final String text;

  Profile({
    Key key,
    @required this.text,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Text(this.text),
    );
  }
}

class Connections extends StatelessWidget {
  final int foros, noticias;
  const Connections({
    Key key,
    @required this.foros,
    @required this.noticias,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(40, 0 ,255, 0),
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Connection(
            text: 'foros',
            number: this.foros,
          ),
          Connection(
            text: 'noticias',
            number: this.noticias,
          ),
        ],
      ),
    );
  }
}

class Connection extends StatelessWidget {
  final String text;
  final int number;

  const Connection({
    Key key,
    @required this.number,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(
      color: Colors.white70
    );
    return Column(
      children: <Widget>[
        Text(this.text.toUpperCase(), style: style.copyWith(fontSize: 12),),
        Text('${this.number}', style: style.copyWith(fontSize: 18))
      ],
    );
  }
}

class Header extends StatelessWidget {
  final String backgroundAsset;
  final String userAsset;
  final String username;

  const Header({
    Key key,
    @required this.username,
    @required this.backgroundAsset,
    @required this.userAsset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(this.backgroundAsset),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
           UserPhoto(
             assetImage: this.userAsset
           ),
           Text(
             '@${this.username}'
           ),
        ],
      ),
    );
  }
}

class UserPhoto extends StatelessWidget {
  final String assetImage;
  const UserPhoto({
    Key key,
    @required this.assetImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(this.assetImage),
          fit: BoxFit.cover,
        ),
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white,
          width: 2,
          ),
      ),
      margin: EdgeInsets.only(bottom: 6),
    );
  }
}