import 'package:flutter/material.dart';
import 'auth.dart';

class LoginPage extends StatefulWidget{

  LoginPage({this.auth});
  final BaseAuth auth;

  @override
  State<StatefulWidget> createState() => new _LoginPageState();
}

enum FormType{
  login,
  register
}

class _LoginPageState extends State<LoginPage>{

  final formKey = new  GlobalKey<FormState>();

  String _email;
  String _password;
  FormType _formType = FormType.login;

  bool validateAndSave(){
    final form = formKey.currentState;
    if (form.validate()){
      form.save();
      print('Form is valid. Email: $_email, Password: $_password');
      return true;
    } else {
      //print('Form in invalid. Email: $_email, Password: $_password');
      return false;
    }
  }

    void validateAndSubmit() async{
      if (validateAndSave()){
        try{
          if(_formType == FormType.login){
            String userId = await widget.auth.signIn(_email, _password);
            //FirebaseUser user = await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password);
            print('Signed in: $userId');
          }else{
            String userId = await widget.auth.createUser(_email, _password);
            //FirebaseUser user = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _email, password: _password);
            print('Registered user: $userId');
          }
        }
        catch (e){
          print('Error: $e');
        }
      }
    }
  

  void moveToRegister(){
    formKey.currentState.reset();
    setState(() {
      _formType = FormType.register;
    });
  }

  void moveToLogin(){
    formKey.currentState.reset();
    setState(() {
      _formType = FormType.login;
    });
  }

  @override 
    Widget build(BuildContext context){
      return new Scaffold(
        appBar: new AppBar(
          title: new Text("NewsK login demo"),
        ),
        body: new Container(
          padding: EdgeInsets.all(16.0),
          child: new Form(
            key: formKey,
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
            ),
          ),
        ),
      );
    }

    List<Widget> buildInputs(){
      return[
        new TextFormField(
                  decoration: new InputDecoration(labelText: 'Email'),
                  validator: (value) => value.isEmpty ? 'Email can`t be empty':null,
                  onSaved: (value) => _email = value,
                ),
                new TextFormField(
                  decoration: new InputDecoration(labelText: 'Password'),
                  obscureText: true,
                  validator: (value) => value.isEmpty ? 'Password can`t be empty':null,
                  onSaved: (value) => _password = value,
                ),
      ];
    }

    List<Widget> buildSubmitButtons(){
      if (_formType == FormType.login){
        return[
          new RaisedButton(
                  child: new Text("Login", style: new TextStyle(fontSize: 20.0),),
                  onPressed: validateAndSubmit,
                ),
                new FlatButton(
                  child: new Text('Create an account', style: new TextStyle(fontSize: 20.0)),
                  onPressed: moveToRegister,
                ),
        ];
      } else {
        return[
          new RaisedButton(
                  child: new Text("Create an account", style: new TextStyle(fontSize: 20.0),),
                  onPressed: validateAndSubmit,
                ),
                new FlatButton(
                  child: new Text('Have an account? Login', style: new TextStyle(fontSize: 20.0)),
                  onPressed: moveToLogin,
                )
        ];
    }
  }
}