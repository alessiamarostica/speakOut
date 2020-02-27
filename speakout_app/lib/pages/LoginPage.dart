import 'package:bottomnavbar/pages/SignPage.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'SignPage.dart';

class LoginPage extends StatefulWidget{
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}
class _LoginPageState extends State<LoginPage>{
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
    final benvenutoTitolo = Center(
      child: Text(
      'Benvenuto in SpeakOut!',
      style: TextStyle(
          fontSize: 25,
          color: Colors.grey[500],
        ),
      ),
    );
    final oppure = Center(
      child: Text(
        'oppure',
        style: TextStyle(
          fontSize: 14,
          color: Colors.grey[400],
        ),
      ),
    );
    final facebook = Padding(
      padding: const EdgeInsets.only(left:15.00, right: 15, bottom: 5, top: 5),
      child:Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Image.asset('assets/images/icon_facebook.png',height: 35, width: 35,),
          ),
          RaisedButton(
            child: Text('Accedi con Facebook', style: TextStyle(color: Colors.black54, fontSize: 16),),
            color: Colors.white,
            splashColor: Colors.grey[300],
            elevation: 0.0,
            shape: RoundedRectangleBorder(
            ),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
          ),
        ],
      ),
      ),
    );

    final google = Padding(
      padding: const EdgeInsets.only(left:15.00, right: 15, bottom: 0, top: 25),
      child:Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(

              child: Image.asset('assets/images/icon_google.png',height: 35, width: 35,),
            ),
            RaisedButton(
              child: Text('Accedi con Google', style: TextStyle(color: Colors.black54, fontSize: 16),),
              color: Colors.white,
              splashColor: Colors.grey[300],
              elevation: 0.0,
              shape: RoundedRectangleBorder(
              ),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
            ),
          ],
        ),
      ),
    );

    final username = Padding(
      padding: const EdgeInsets.only(left:15.00, right: 15, bottom: 0, top: 1),
      child:Container(child:TextField(
        decoration: new InputDecoration(labelText: "Username"),
    ),
      ),
    );
    final password = Padding(
      padding: const EdgeInsets.only(left:15.00, right: 15, bottom: 0, top: 5),
      child:Container(child:TextField(
      decoration: new InputDecoration(labelText: "Password"),
    ),
    ),
    );
    final loginButton = Padding(
      padding: const EdgeInsets.only(left:15.00, right: 15, bottom: 3, top: 7),
      child: RaisedButton(
        child: Text('Entra', style: TextStyle(color: Colors.white, fontSize: 20),),
        color: Colors.orange[500],
        splashColor: Colors.yellow[300],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.00),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Home()),
          );
        },
      ),
    );
    final signButton = FlatButton(
      child: Text(
        'Non hai un account? Registrati qui.', style: TextStyle(color: Colors.grey[400]),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SignPage()),
        );
      },
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,

            SizedBox(height: 48.0),
            benvenutoTitolo,
            SizedBox(height: 8.0),
            google,
            SizedBox(height: 8.0),
            facebook,
            SizedBox(height: 3.0),
            oppure,
            SizedBox(height: 8.0),
            username,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 8.0),
            loginButton,
            signButton,
          ],
        ),
      ),
    );
  }
}