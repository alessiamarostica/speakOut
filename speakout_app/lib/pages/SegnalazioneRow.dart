import 'SegnalazioneClass.dart';
import 'package:flutter/material.dart';
import 'SegnalazioneDetail.dart';

class SegnalazioneRow extends StatelessWidget {

  final Segnalazione segnalazione;

  SegnalazioneRow(this.segnalazione);

  @override
  Widget build(BuildContext context) {
    final planetThumbnail = new Container(
      margin: new EdgeInsets.symmetric(
          vertical: 10.0
      ),
      alignment: FractionalOffset.centerLeft,
      child: new Image(
        image: new AssetImage(segnalazione.image),
        height: 92.0,
        width: 92.0,
      ),
    );

    final baseTextStyle = const TextStyle(
        fontFamily: 'Poppins'
    );

    final headerTextStyle = baseTextStyle.copyWith(
        color: Colors.black87,
        fontSize: 18.0,
        fontWeight: FontWeight.w600
    );

    final planetCardContent = new Container(
      margin: new EdgeInsets.fromLTRB(76.0, 16.0, 10.0, 16.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(height: 4.0),
          new Text(segnalazione.titolo, style: headerTextStyle),
          new Container(height: 10.0),
          new Text(segnalazione.data, style: TextStyle(color: Colors.black54, fontSize: 13.0)),
          new Container(
              margin: new EdgeInsets.symmetric(vertical: 8.0),
              height: 1.0,
              width: 18.0,
              color: Colors.grey[400]
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                  child: Row(
                    children: <Widget>[
                      new Icon(Icons.check, color: segnalazione.stato == 'Risolto' ? Colors.green[800] : segnalazione.stato == 'Attesa' ? Colors.orange[800] : Colors.red[800], size: 20.0,),
                      new Text(segnalazione.stato,style: TextStyle(fontSize: 13.00, color: Colors.black87)),
                    ],
                  )
              ),
              new Expanded(
                  child: Row(
                    children: <Widget>[
                      new Icon(Icons.favorite , size: 20.0, color: Colors.black87,),
                      new Text(' ${segnalazione.sostegno}',style: TextStyle(fontSize: 14.00, color: Colors.black87)),
                    ],
                  )
              ),
            ],
          ),
        ],
      ),
    );


    final planetCard = new Container(
      child: planetCardContent,
      height: 124.0,
      margin: new EdgeInsets.only(left: 46.0),
      decoration: new BoxDecoration(
        color: Colors.grey[200],
        shape: BoxShape.rectangle,
        borderRadius: new BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          new BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            offset: new Offset(0.0, 10.0),
          ),
        ],
      ),
    );


    return new GestureDetector(
        onTap: () => Navigator.of(context).push(new PageRouteBuilder(
          pageBuilder: (_, __, ___) => new DetailPage(segnalazione),
        )),
        child: new Container(
          height: 120.0,
          margin: const EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 24.0,
          ),
          child: new Stack(
            children: <Widget>[
              planetCard,
              planetThumbnail,
            ],
          ),
        )
    );
  }
}