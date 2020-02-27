import 'package:flutter/material.dart';
import 'SegnalazioneClass.dart';
import 'SegnalazioneDetail.dart';


class IconaSummary extends StatefulWidget {
  Segnalazione segnalazione;
  bool horizontal;

  IconaSummary(this.segnalazione, this.horizontal);
  @override
  IconaSummaryState createState() => IconaSummaryState(segnalazione, horizontal);
}

class IconaSummaryState extends State<IconaSummary> {
  Segnalazione segnalazione;
  bool horizontal;
  bool click = false;

  IconaSummaryState(this.segnalazione, this.horizontal);

  IconaSummaryState.vertical(this.segnalazione): horizontal = false;

  @override
  Widget build(BuildContext context) {

    void _incrementCounter() {
      setState(() {
        if (click ==false) {
          click = true;
          segnalazione.sostegno = segnalazione.sostegno+1;

        } else{
          click = false;
          segnalazione.sostegno = segnalazione.sostegno-1;
        }
      });
    }

    final iconaThumbnail = new Container(
      margin: new EdgeInsets.symmetric(
          vertical: 16.0
      ),
      alignment: horizontal ? FractionalOffset.centerLeft : FractionalOffset.center,
      child: new Hero(
        tag: "icona-hero-${segnalazione.id}",
        child: new Image(
          image: new AssetImage(segnalazione.image),
          height: 92.0,
          width: 92.0,
        ),
      ),
    );
    final planetCardContent = new Container(
      margin: new EdgeInsets.fromLTRB(horizontal ? 76.0 : 16.0, horizontal ? 16.0 : 42.0, 16.0, 0.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment: horizontal ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        children: <Widget>[
          new Container(height: 4.0),
          new Text(segnalazione.titolo, style: TextStyle(color: Colors.black87, fontSize: 18.0),),
          new Container(height: 10.0),
          new Text(segnalazione.data, style: TextStyle(color: Colors.black45, fontSize: 14.0),),
          new Container(
            padding: new EdgeInsets.symmetric(vertical: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Icon(Icons.check, color: segnalazione.stato == 'Risolto' ? Colors.green[800] : segnalazione.stato == 'Presa in carico' ? Colors.orange[800] : Colors.red[800], size: 22.0,),
                        new Text(segnalazione.stato,style: TextStyle(fontSize: 16.00, color: Colors.black87)),
                      ],
                    )
                ),
                new Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      MaterialButton(
                        minWidth: 10.0,
                        height: 5.0,
                        onPressed: (){
                          setState(() {
                              _incrementCounter();
                          },);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(click==true ? Icons.favorite : Icons.favorite_border,size: 25.0, color: Colors.black87, ),
                            Text('  ${segnalazione.sostegno}', style: TextStyle(fontSize: 16.0, color: Colors.black87),)
                          ],),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );


    final planetCard = new Container(
      child: planetCardContent,
      height: horizontal ? 124.0 : 154.0,
      margin: horizontal
          ? new EdgeInsets.only(left: 46.0)
          : new EdgeInsets.only(top: 72.0),
      decoration: new BoxDecoration(
        color: Colors.grey[300],
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
        onTap: horizontal
            ? () => Navigator.of(context).push(
          new PageRouteBuilder(
            pageBuilder: (_, __, ___) => new DetailPage(segnalazione),
            transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            new FadeTransition(opacity: animation, child: child),
          ) ,
        )
            : null,
        child: new Container(
          margin: const EdgeInsets.only(
            left: 40.0,
            right: 40.00,
            top: 110.0,
            bottom: 20.0,
          ),
          child: new Stack(
            children: <Widget>[
              planetCard,
              iconaThumbnail,
            ],
          ),
        )
    );
  }
}