import 'package:flutter/material.dart';
import 'SegnalazioneClass.dart';
import 'SegnalazioniSummary.dart';
import 'Separator.dart';
import 'package:bottomnavbar/Carousel.dart';

class DetailPage extends StatefulWidget {
  Segnalazione segnalazione;
  DetailPage(this.segnalazione);
  @override
  DetailPageState createState() => DetailPageState(segnalazione);
}

class DetailPageState extends State<DetailPage> {
  Segnalazione segnalazione;

  DetailPageState(this.segnalazione);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        constraints: new BoxConstraints.expand(),
        color: Colors.grey[200],
        child: new Stack(
          children: <Widget>[
            _getBackground(),
            _getGradient(),
            _getContent(),
            _getToolbar(context),
          ],
        ),
      ),
    );
  }

  Container _getBackground() {
    return new Container(
      child: new Image(
        image: new AssetImage(segnalazione.mappa),
        fit: BoxFit.cover,
        height: 400.0,
      ),
      constraints: new BoxConstraints.expand(height: 300.0),
    );
  }

  Container _getGradient() {
    return new Container(
      margin: new EdgeInsets.only(top: 270.0),
      height: 115.0,
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
          colors: <Color>[Colors.white, Colors.grey[200]],
          stops: [0.0, 0.9],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(0.0, 1.0),
        ),
      ),
    );
  }

  Container _getContent() {
    final _overviewTitle = "Descrizione".toUpperCase();
    return new Container(
      child: new ListView(
        padding: new EdgeInsets.fromLTRB(0.0, 72.0, 0.0, 32.0),
        children: <Widget>[
          new IconaSummary(
            segnalazione,
            false,
          ),
          new Container(
            padding: new EdgeInsets.symmetric(horizontal: 32.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                  _overviewTitle,
                  style: TextStyle(color: Colors.black54, fontSize: 20.0),
                ),
                new Separator(),
                new Text(
                  segnalazione.description,
                  style: TextStyle(color: Colors.black54, fontSize: 15.0),
                ),
              ],
            ),
          ),
          new Container(
            padding: new EdgeInsets.symmetric(horizontal: 32.0, vertical: 20.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                  'INDIRIZZO',
                  style: TextStyle(color: Colors.black54, fontSize: 20.0),
                ),
                new Separator(),
                new Text(
                  segnalazione.indirizzo,
                  style: TextStyle(color: Colors.black54, fontSize: 15.0),
                ),
              ],
            ),
          ),
          new Row(
            children: <Widget>[
              new GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FullScreenPage(segnalazione,1)),
                  );
                },
                child: Container(
                  padding: new EdgeInsets.only(left: 20, right: 10,
                      ),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Image(
                        image: AssetImage(segnalazione.image1),
                        height: 80.0,
                        width: 80.0,
                      ),
                    ],
                  ),
                ),
              ),
              new GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FullScreenPage(segnalazione, 2)),
                  );
                },
                child: Container(
                  padding: new EdgeInsets.only(
                     left:5),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Image(
                        image: AssetImage(segnalazione.image2),
                        height: 80.0,
                        width: 80.0,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container _getToolbar(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: new BackButton(color: Colors.black),
    );
  }
}
