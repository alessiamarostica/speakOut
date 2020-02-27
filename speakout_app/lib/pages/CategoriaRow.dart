import 'CategoriaClass.dart';
import 'package:flutter/material.dart';

/* METTERE UN TITOLO TIPO : SCOPRI I PUNTI DI FORZA DEL TUO COMUNE!*/
class CategoriaRow extends StatelessWidget {

  final Categorie categoria;

  CategoriaRow(this.categoria);

  @override
  Widget build(BuildContext context) {
    final planetThumbnail = new Container(
      margin: new EdgeInsets.symmetric(
          vertical: 10.0
      ),
      alignment: FractionalOffset.centerLeft,
      child: new Image(
        image: new AssetImage(categoria.image),
        height: 92.0,
        width: 92.0,
      ),
    );

    final baseTextStyle = const TextStyle(
        fontFamily: 'Poppins'
    );
    final headerTextStyle = baseTextStyle.copyWith(
        color: Colors.black87,
        fontSize: 16.0,
        fontWeight: FontWeight.w600
    );

    final planetCardContent = new Container(
      margin: new EdgeInsets.fromLTRB(65.0, 7.0, 16.0, 8.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(height: 4.0),
          new Text(categoria.titolo, style: headerTextStyle),
          new Container(height: 5.0),
          new Row(
            children: <Widget>[
              new Icon(Icons.check, color: Colors.green[800], size: 20,),
              new Text('  Risolte: ' + categoria.risolte + '%', style: TextStyle(color: Colors.black87, fontSize: 13.0)),
            ],
          ),
          new Container(height: 5.0),
          new Row(
            children: <Widget>[
              new Icon(Icons.check, color: Colors.orange[800], size: 20,),
              new Text('  In Attesa: ' + categoria.attesa + '%', style: TextStyle(color: Colors.black87, fontSize: 13.0)),
            ],
          ),
          new Container(height: 5.0),
          new Row(
            children: <Widget>[
              new Icon(Icons.check, color: Colors.red[800], size: 20,),
              new Text('  Negate: ' + categoria.negate + '%', style: TextStyle(color: Colors.black87, fontSize: 13.0)),
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
        color:Colors.grey[200],
        shape: BoxShape.rectangle,
        borderRadius: new BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          new BoxShadow(
            color: Colors.black12,
            blurRadius: 3.0,
            offset: new Offset(0.0, 5.0),
          ),
        ],
      ),
    );



    return new Container(
          height: 120.0,
          margin: const EdgeInsets.symmetric(
            vertical: 5.0,
            horizontal: 24.0,
          ),
          child: new Stack(
            children: <Widget>[
              planetCard,
              planetThumbnail,
            ],
          ),
    );
  }
}