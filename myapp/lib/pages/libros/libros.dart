import 'package:flutter/material.dart';
import 'package:news_app/pages/libros/HtttpRequest.dart';

void main() => runApp(Libros());

class Libros extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biblioteca',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new LibrosPage(),
    );
  }
}

class LibrosPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new LibrosState();
}

class LibrosState extends State<LibrosPage> {
  List<Book> _list;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: Text("Librería"),
        ),
        body: _getBody());
  }

  Widget _getBody() {
    if (_list == null) {
      return CircularProgressIndicator();
    } else if (_list.length == 0) {
      return Center(
        child: Text("No hay datos"),
      );
    } else {
      return GridView.builder(
          itemCount: _list.length,
          gridDelegate:
              new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            final book = _list[index];
            return new BookWidget(book);
          });
    }
  }

  @override
  void initState() {
    super.initState();
    doRequest();
  }

  void doRequest() {
    getData().then((result) {
      setState(() {
        _list = result;
      });
    }).catchError((error) {
      print(error);
    });
  }
}

class BookWidget extends StatelessWidget {
  final Book book;

  BookWidget(this.book);

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.all(3),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder:
                  (BuildContext context) => new BookShower(this)));
        },
        child: Stack(
          children: <Widget>[
            Center(
              child: Image.network(book.cover),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: Colors.black.withOpacity(0.5),
                height: 52,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Text(
                        book.id,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        book.author,
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BookShower extends StatelessWidget {
  final BookWidget bookWidget;

  BookShower(this.bookWidget);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: bookWidget,
    );
  }
}
