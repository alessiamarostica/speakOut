import 'package:bottomnavbar/pages/InfoPage.dart';
import 'package:bottomnavbar/pages/LoginPage.dart';
import 'package:flutter/material.dart';
import './pages/LoginPage.dart';
import './pages/HomePage.dart';
import './pages/SignPage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import'./pages/Tutorial_iniziale.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    Home.tag: (context) => Home(),
    LoginPage.tag: (context) => LoginPage(),
    SignPage.tag: (context) => SignPage(),
  };


  _read() async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'login';
    final value = prefs.getInt(key) ?? 0;
    return value;
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    final textTheme = Theme.of(context).textTheme;
    return WillPopScope(
        onWillPop: () => Future.value(false),
    child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        textTheme: GoogleFonts.latoTextTheme(textTheme).copyWith(
        body1: GoogleFonts.lato(textStyle: textTheme.body1),
      ),
      ),
      routes: routes,
      home: _read == 1 ? LoginPage(): Tutorial(),
    ),
    );
  }
}


