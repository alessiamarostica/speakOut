import 'package:flutter/material.dart';
import 'ProfilePage.dart';
import 'StatistichePage.dart';
import 'NewsPage.dart';
import 'SegnalazioniListPage.dart';
import 'SegnalazioniAddPage.dart';
import 'InfoPage.dart';

class Home extends StatefulWidget {
  static String tag = 'home-page';
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  int currentTab = 1;
  final List<Widget> screens = [
    Profile(),
    ListPage(),
    Statistiche(),
    Comunicazioni(),
  ];
  Widget currentSreen = ListPage(); // Prima Pagina quando apro l'App
  final PageStorageBucket bucket = PageStorageBucket();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // Barra superiore in tutte le pagine

      appBar: AppBar(
        title: Image.asset('assets/images/logo-scritta.png',height: 90, width: 90,),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.info_outline),
            color: Colors.grey[600],
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Informazioni()),
              );
            },
          ),
        ],
      ),

      // Body

      body: PageStorage(
        child: currentSreen,
        bucket: bucket,
      ),

      // Button Floating

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, color: currentTab == -1 ? Colors.white : Colors.grey[100],),
        backgroundColor: currentTab == -1 ? Colors.grey[700] : Colors.grey[400],
        elevation: 5.0,
        onPressed: (){
          setState(() {
              currentSreen = SegnalazioniAdd();
              currentTab = -1;
           },);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      // Bottom Nav

      bottomNavigationBar: BottomAppBar(
        elevation: 8.0,
        shape: CircularNotchedRectangle(),
        color: Colors.white,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(

                children: <Widget>[

                  //Button Profile

                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentSreen = Profile();
                        currentTab = 0;
                      },);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.person, color: currentTab == 0 ? Colors.black87 : Colors.grey[400],),
                        Text('Profilo', style: TextStyle(color : currentTab == 0 ? Colors.black87 : Colors.grey[400],),)
                      ],),
                  ),

                  //Button List

                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentSreen = ListPage();
                        currentTab = 1;
                      },);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                      Icon(Icons.format_list_bulleted , color: currentTab == 1 ? Colors.black87 : Colors.grey[400],),
                      Text('Segnalazioni', style: TextStyle(color : currentTab == 1 ? Colors.black87 : Colors.grey[400],),)
                    ],),
                  ),

                ],
              ),
        Row(
          children: <Widget>[
            Row(
              children: <Widget>[

                //Button Statistiche

                MaterialButton(
                  minWidth: 40,
                  onPressed: (){
                    setState(() {
                      currentSreen = Statistiche();
                      currentTab = 2;
                    },);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.equalizer, color: currentTab == 2 ? Colors.black87 : Colors.grey[400],),
                      Text('Classifica', style: TextStyle(color : currentTab == 2 ? Colors.black87 : Colors.grey[400],),)
                    ],),
                ),

                //Button Communicazioni

                MaterialButton(
                  minWidth: 40,
                  onPressed: (){
                    setState(() {
                      currentSreen = Comunicazioni();
                      currentTab = 3;
                    },);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.textsms, color: currentTab == 3 ? Colors.black87 : Colors.grey[400],),
                      Text('News', style: TextStyle(color : currentTab == 3 ? Colors.black87 : Colors.grey[400],),)
                    ],
                  ),
                ),
              ],
            ),
            ],
          ),
          ],
        ),
      ),
      ),
    );
  }
}

