import 'package:flutter/material.dart';
import 'SegnalazioneRow.dart';
import 'segnalazioni.dart';
import 'Dialog.dart';

class ListPage extends StatelessWidget {
  @override
  Dialogs dialogs = new Dialogs();
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.white,
        child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Row(

                  children: <Widget>[
                    Icon(Icons.reorder, size: 30,),
                    Text(
                      'Ordina',
                      style: TextStyle(color: Colors.black87, fontSize: 18),
                    ),
                  ],
                ),
                color: Colors.white,
                splashColor: Colors.white,
                elevation: 0.0,
                onPressed: () => dialogs.order(context),
              ),
              RaisedButton(
                child: Row(

                  children: <Widget>[
                    Icon(Icons.filter_list, size: 30,),
                    Text(
                      'Filtri',
                      style: TextStyle(color: Colors.black87, fontSize: 18),
                    ),
                  ],
                ),
                color: Colors.white,
                splashColor: Colors.white,
                elevation: 0.0,
                onPressed: () => dialogs.filter(context),
              ),
            ],
          ),


        Expanded(
          child: new Container(
            color: Colors.white,
            child: new CustomScrollView(
              scrollDirection: Axis.vertical,
              shrinkWrap: false,
              slivers: <Widget>[
                new SliverPadding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  sliver: new SliverList(
                    delegate: new SliverChildBuilderDelegate(
                          (context, index) => new SegnalazioneRow(segnala[index]),
                      childCount: segnala.length,
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