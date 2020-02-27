import 'package:flutter/material.dart';
import 'SegnalazioneRow.dart';
import 'segnalazioni.dart';

class MieSegnalazioni extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Le mie Segnalazioni'),
      automaticallyImplyLeading: true,
        leading: IconButton(icon:Icon(Icons.arrow_back, color: Colors.black87),
          onPressed:() => Navigator.pop(context, false),
        ),
        backgroundColor: Colors.white,
      ),
      body:  new Container(
     child: new Column(
      children: <Widget>[
        Expanded(
          child: new Container(
            color: Colors.white,
            child: new CustomScrollView(
              scrollDirection: Axis.vertical,
              shrinkWrap: false,
              slivers: <Widget>[
                new SliverPadding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
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
      ),
    );
  }
}
