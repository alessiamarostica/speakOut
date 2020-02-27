import 'package:flutter/material.dart';
import 'DescrSegnalazione.dart';

class SegnalazioniAdd extends StatefulWidget {
  @override
  _SegnalazioniAddState createState() => _SegnalazioniAddState();
}
class _SegnalazioniAddState extends State<SegnalazioniAdd> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          new Container(
            margin: new EdgeInsets.all(10.0),
            child: Text(
              'Scegli la categoria della segnalazione:',
              style: TextStyle(color: Colors.black87, fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
          ),
          new Expanded(
            child: new GridView.count(
              crossAxisCount: 2,
              children: <Widget>[
                new GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Descrizione()),
                    );
                  },
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        new Image(
                          image: new AssetImage(
                              'assets/images/icona_animale_vagante.png'),
                          height: 120.0,
                          width: 120.0,
                        ),
                        new Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Animale vagante',
                              style: TextStyle(color: Colors.black87),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ],
                    ),
                    height: 20.0,
                    width: 20.0,
                    margin: new EdgeInsets.only(
                        left: 40.0, right: 10.0, top: 0.0, bottom: 30.0),
                    decoration: new BoxDecoration(
                      color: new Color(0xFFE2BEB0),
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.circular(4.0),
                      boxShadow: <BoxShadow>[
                        new BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10.0,
                          offset: new Offset(0.0, 10.0),
                        ),
                      ],
                    ),
                  ),
                ),
                new GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Descrizione()),
                    );
                  },
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        new Image(
                          image: new AssetImage(
                              'assets/images/icona_animali_selvaggi.png'),
                          height: 120.0,
                          width: 120.0,
                        ),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Animale Selvaggio',
                              style: TextStyle(color: Colors.black87),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ],
                    ),
                    height: 20.0,
                    width: 20.0,
                    margin: new EdgeInsets.only(
                        left: 10.0, right: 40.0, top: 0.0, bottom: 30.0),
                    decoration: new BoxDecoration(
                      color: new Color(0xffecd4b0),
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.circular(4.0),
                      boxShadow: <BoxShadow>[
                        new BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10.0,
                          offset: new Offset(0.0, 10.0),
                        ),
                      ],
                    ),
                  ),
                ),
                new GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Descrizione()),
                    );
                  },
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        new Image(
                          image: new AssetImage(
                              'assets/images/icona_spazzatura.png'),
                          height: 120.0,
                          width: 120.0,
                        ),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Spazzatura',
                              style: TextStyle(color: Colors.black87),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ],
                    ),
                    height: 20.0,
                    width: 20.0,
                    margin: new EdgeInsets.only(
                        left: 40.0, right: 10.0, top: 0.0, bottom: 30.0),
                    decoration: new BoxDecoration(
                      color: new Color(0xffeee2b1),
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.circular(4.0),
                      boxShadow: <BoxShadow>[
                        new BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10.0,
                          offset: new Offset(0.0, 10.0),
                        ),
                      ],
                    ),
                  ),
                ),
                new GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Descrizione()),
                    );
                  },
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        new Image(
                          image: new AssetImage(
                              'assets/images/icona_cartelli_stradali.png'),
                          height: 120.0,
                          width: 120.0,
                        ),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Cartelli Stradali',
                              style: TextStyle(color: Colors.black87),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ],
                    ),
                    height: 20.0,
                    width: 20.0,
                    margin: new EdgeInsets.only(
                        left: 10.0, right: 40.0, top: 0, bottom: 30.0),
                    decoration: new BoxDecoration(
                      color: new Color(0xffd3adac),
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.circular(4.0),
                      boxShadow: <BoxShadow>[
                        new BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10.0,
                          offset: new Offset(0.0, 10.0),
                        ),
                      ],
                    ),
                  ),
                ),
                new GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Descrizione()),
                    );
                  },
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        new Image(
                          image: new AssetImage(
                              'assets/images/icona_degrado_urbano.png'),
                          height: 120.0,
                          width: 120.0,
                        ),
                        new Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Degrado Urbano',
                              style: TextStyle(color: Colors.black87),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ],
                    ),
                    height: 20.0,
                    width: 20.0,
                    margin: new EdgeInsets.only(
                        left: 40.0, right: 10.0, top: 0.0, bottom: 30.0),
                    decoration: new BoxDecoration(
                      color: new Color(0xFFc0c0c0),
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.circular(4.0),
                      boxShadow: <BoxShadow>[
                        new BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10.0,
                          offset: new Offset(0.0, 10.0),
                        ),
                      ],
                    ),
                  ),
                ),
                new GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Descrizione()),
                    );
                  },
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        new Image(
                          image: new AssetImage(
                              'assets/images/icona_verde.png'),
                          height: 120.0,
                          width: 120.0,
                        ),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Verde Cittadino',
                              style: TextStyle(color: Colors.black87),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ],
                    ),
                    height: 20.0,
                    width: 20.0,
                    margin: new EdgeInsets.only(
                        left: 10.0, right: 40.0, top: 0, bottom: 30.0),
                    decoration: new BoxDecoration(
                      color: new Color(0xffb4c4a8),
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.circular(4.0),
                      boxShadow: <BoxShadow>[
                        new BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10.0,
                          offset: new Offset(0.0, 10.0),
                        ),
                      ],
                    ),
                  ),
                ),
                new GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Descrizione()),
                    );
                  },
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        new Image(
                          image: new AssetImage(
                              'assets/images/icona_vandalismo.png'),
                          height: 120.0,
                          width: 120.0,
                        ),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Vandalismo',
                              style: TextStyle(color: Colors.black87),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ],
                    ),
                    height: 20.0,
                    width: 20.0,
                    margin: new EdgeInsets.only(left: 40.0, right: 10.0, top: 0.0, bottom: 30.0),
                    decoration: new BoxDecoration(
                      color: new Color(0xffb6b996),
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.circular(4.0),
                      boxShadow: <BoxShadow>[
                        new BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10.0,
                          offset: new Offset(0.0, 10.0),
                        ),
                      ],
                    ),
                  ),
                ),
                new GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Descrizione()),
                    );
                  },
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        new Image(
                          image: new AssetImage(
                              'assets/images/icona_illuminazione.png'),
                          height: 120.0,
                          width: 120.0,
                        ),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Illuminazione',
                              style: TextStyle(color: Colors.black87),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ],
                    ),
                    height: 20.0,
                    width: 20.0,
                    margin: new EdgeInsets.only(
                        left: 10.0, right: 40.0, top: 0, bottom: 30.0),
                    decoration: new BoxDecoration(
                      color: new Color(0xffd4d190),
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.circular(4.0),
                      boxShadow: <BoxShadow>[
                        new BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10.0,
                          offset: new Offset(0.0, 10.0),
                        ),
                      ],
                    ),
                  ),
                ),
                new GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Descrizione()),
                    );
                  },
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        new Image(
                          image: new AssetImage(
                              'assets/images/icona_dissesto.png'),
                          height: 120.0,
                          width: 120.0,
                        ),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Dissesto Stradale',
                              style: TextStyle(color: Colors.black87),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ],
                    ),
                    height: 20.0,
                    width: 20.0,
                    margin: new EdgeInsets.only(
                        left: 40.0, right: 10.0, top: 0.0, bottom: 30.0),
                    decoration: new BoxDecoration(
                      color: new Color(0xff9da1b8),
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.circular(4.0),
                      boxShadow: <BoxShadow>[
                        new BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10.0,
                          offset: new Offset(0.0, 10.0),
                        ),
                      ],
                    ),
                  ),
                ),
                new GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Descrizione()),
                    );
                  },
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        new Image(
                          image: new AssetImage(
                              'assets/images/icona_altro.png'),
                          height: 120.0,
                          width: 120.0,
                        ),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Altro',
                              style: TextStyle(color: Colors.black87),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ],
                    ),
                    height: 20.0,
                    width: 20.0,
                    margin: new EdgeInsets.only(
                        left: 10.0, right: 40.0, top: 0, bottom: 30.0),
                    decoration: new BoxDecoration(
                      color: new Color(0xffa69181),
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.circular(4.0),
                      boxShadow: <BoxShadow>[
                        new BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10.0,
                          offset: new Offset(0.0, 10.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
