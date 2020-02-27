import 'package:flutter/material.dart';
import 'HomePage.dart';

class SignPage extends StatefulWidget{
  static String tag = 'sign-page';
  @override
  _SignPageState createState() => new _SignPageState();
}
class _SignPageState extends State<SignPage>{
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('assets/images/iconaApp.png'),
      ),
    );
    final nome = TextField(
      decoration: new InputDecoration(labelText: "Nome"),
    );

    final cognome = TextField(
      decoration: new InputDecoration(labelText: "Cognome"),
    );
    final username = TextField(
      decoration: new InputDecoration(labelText: "Username"),
    );
    final password = TextField(
      decoration: new InputDecoration(labelText: "Password"),
    );
    final dataNascita = TextField(
      decoration: new InputDecoration(labelText: "Data di Nascita"),
    );
    final signButton = Padding(
      padding: const EdgeInsets.all(20.0),
      child: RaisedButton(
        child: Text('Registrati', style: TextStyle(color: Colors.white, fontSize: 20),),
        color: Colors.orange[500],
        splashColor: Colors.yellow[300],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.00),
        ),
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Home()),
          );
        },
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/logo-scritta.png',height: 90, width: 90,),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0,top: 10),
          children: <Widget>[
            logo,
            SizedBox(height: 50.0),
            nome,
            SizedBox(height: 15.0),
            cognome,
            SizedBox(height: 15.0),
            dataNascita,
            SizedBox(height: 15.0),
            username,
            SizedBox(height: 15.0),
            password,
            SizedBox(height: 15.0),
            signButton,
          ],
        ),
      ),
    );
  }
}