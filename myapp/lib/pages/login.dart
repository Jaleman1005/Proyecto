//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:news_app/pages/register.dart';
//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:google_sign_in/google_sign_in.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;

  @override
  void initState() {
    super.initState();
    _iconAnimationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 400));
    _iconAnimation = new CurvedAnimation(
        parent: _iconAnimationController, curve: Curves.bounceIn);
    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Iniciar Sesión"),
          actions: <Widget>[],
        ),
        body: new Container(
          alignment: Alignment.center,
          child: SingleChildScrollView(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new FlutterLogo(
                size: _iconAnimation.value * 100,
              ),
              new Form(
                child: Container(
                  padding: const EdgeInsets.all(50.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new TextFormField(
                        decoration:
                            new InputDecoration(hintText: "Correo electrónico"),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      new TextFormField(
                        decoration: new InputDecoration(hintText: "Contraseña"),
                        keyboardType: TextInputType.text,
                        obscureText: true,
                      ),
                      new Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                      ),
                      new MaterialButton(
                        color: Colors.teal,
                        textColor: Colors.white,
                        child: new Text("Iniciar Sesión"),
                        //onPressed: _signInAnonymously,
                      ),
                      new Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                      ),
                      new MaterialButton(
                        color: Colors.white,
                        textColor: Colors.black87,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Image.asset('images/google-logo.png'),
                              Text("Iniciar con Google"),
                              Opacity(
                                opacity: 0.0,
                                child: Image.asset('images/google-logo.png'),
                              )
                            ]),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(4.0))),
                        //onPressed: _signInWithGoogle,
                      ),
                      new Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                      ),
                      new MaterialButton(
                        color: Colors.deepPurple,
                        textColor: Colors.white,
                        child: new Text("Registrarse"),
                        onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegistroPage()))
                        },
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
        ));
  }
}

class User {
  User({@required this.uid});
  final String uid;
}
/*
void _signInAnonymously() async {
  try {
    FirebaseUser user = (await FirebaseAuth.instance.signInAnonymously()).user;
    print('${user.uid}');
  } catch (e) {
    print(e.toString()); // TODO: show dialog with error
  }
}

void _signInWithGoogle() async {
  try {
    GoogleSignIn googleSignIn = GoogleSignIn();
    GoogleSignInAccount googleUser = await googleSignIn.signIn();
    Firestore.instance.collection("Users").document(googleUser.id).setData({
      "email": '${googleUser.email}',
      "username": '${googleUser.displayName}',
    });
    print('${googleUser.displayName}');
  } catch (e) {
    print(e); // TODO: show dialog with error
  }
}*/