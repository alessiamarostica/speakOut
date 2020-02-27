import 'package:bottomnavbar/pages/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';



class Tutorial extends StatelessWidget {
  //making list of pages needed to pass in IntroViewsFlutter constructor.
  final pages = [
    PageViewModel(
        pageColor: Colors.yellow[900],
        body: Text(
          'L’applicazione che ti permette di segnalare i problemi al comune.',
        ),
        title: Text(
          'Benvenuto su SpeakOut',
        ),
        titleTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white, fontSize: 40),
        bodyTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white, fontSize: 18),
        mainImage: Image.asset(
          'assets/images/icona_tutorial.png',
          height: 285.0,
          width: 285.0,
          alignment: Alignment.center,
        )),
    PageViewModel(
      pageColor: Colors.green[600],
      body: Text(
        'Fai una segnalazione al tuo comune direttamente dal tuo smartphone! Rimani connesso per sapere le segnalazioni effettuate da altri utenti.',
      ),
      title: Text('Segnalazioni'),
      mainImage: Image.asset(
        'assets/images/icona_segnalazioni_tutorial.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      ),
      titleTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white, fontSize: 40),
      bodyTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white, fontSize: 17),
    ),
    PageViewModel(
      pageColor: Colors.lightBlue[600],
      body: Text(
          'Controlla i punti di forza e di debolezza del tuo comune e non perderti tutte le comunicazioni in arrivo!'
      ),
      title: Text('Scopri il tuo comune'),
      mainImage: Image.asset(
        'assets/images/icona_comunicazioni_tutorial.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      ),
      titleTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white,fontSize: 40),
      bodyTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white, fontSize: 17),
    ),
  ];

  _save() async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'login';
    final value = 1;
    prefs.setInt(key, value);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IntroViews Flutter', //title of app
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ), //ThemeData
      home: Builder(
        builder: (context) => IntroViewsFlutter(
          pages,
          showNextButton: true,
          showBackButton: true,
          onTapDoneButton: () {
            _save();
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginPage(),
              ), //MaterialPageRoute
            );
          },
          pageButtonTextStyles: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ), //IntroViewsFlutter
      ), //Builder
    ); //Material App
  }
}