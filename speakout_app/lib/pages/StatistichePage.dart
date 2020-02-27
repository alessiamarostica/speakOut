import 'package:flutter/material.dart';
import 'CategoriaRow.dart';
import 'categorie.dart';

class Statistiche extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 10),
            child: Text(
              "Scopri i punti di forza del tuo comune!",
              style: TextStyle(color: Colors.black87, fontSize: 19.0),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: new Container(
              color: Colors.white,
              child: new CustomScrollView(
                scrollDirection: Axis.vertical,
                shrinkWrap: false,
                slivers: <Widget>[
                  /*SliverFixedExtentList(
                    itemExtent: 20,
                    delegate: SliverChildListDelegate(
                      [
                        Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Flexible(

                            child:Container(
                              margin: EdgeInsets.only(top:5) ,
                              child: Text(
                                "Scopri i punti di forza del tuo comune!",
                                style: TextStyle(color: Colors.black87,
                                    fontSize: 19.0),
                                textAlign: TextAlign.center,),
                          ),
                          ),
                        ],
                      ),

                      ],
                    ),
                  ),*/
                  new SliverPadding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    sliver: new SliverList(
                      delegate: new SliverChildBuilderDelegate(
                        (context, index) => new CategoriaRow(categoria[index]),
                        childCount: categoria.length,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
