import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Comunicazioni extends StatefulWidget {
  @override
  _ComunicazioniState createState() => _ComunicazioniState();
}

class _ComunicazioniState extends State<Comunicazioni> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 15.0, top: 8.0, right: 5, left: 5),
            child: Text(
              "Rimani sempre informato sulle comunicazioni del tuo comune!",
              style: TextStyle(color: Colors.black87, fontSize: 20,),
              textAlign: TextAlign.center,),
          ),
          new Expanded(
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (BuildContext context,int index)=>EntryItem(
                data[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class Entry{
  final String title;
  final List<Entry> children ;
  Entry(this.title, [this.children = const <Entry>[]]);
}

final List<Entry> data = <Entry>[
  Entry(
      'Comunicazione 20/01/2020 - Interruzione servizio elettrico',
      <Entry>[
        Entry("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
      ]
  ),
  Entry(
    'Comunicazione 21/01/2020 - Lavori Stradali',
    <Entry>[
      Entry("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
    ],
  ),
  Entry(
      'Comunicazione 20/01/2020 - Interruzione servizio elettrico',
      <Entry>[
        Entry("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
      ]
  ),
  Entry(
    'Comunicazione 21/01/2020 - Lavori Stradali',
    <Entry>[
      Entry("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniamquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
    ],
  ),
];

class EntryItem extends StatelessWidget{
  const EntryItem(this.entry);
  final Entry entry;

  Widget _buildTiles(Entry root){
    if(root.children.isEmpty){
      return ListTile(
        title: Text(root.title, style: TextStyle(color: Colors.black87, fontSize: 15.0,),),
        contentPadding: EdgeInsets.all(10.0),
      );
    }
    return ExpansionTile(
      leading: Icon(entry.title == 'Comunicazione 20/01/2020 - Interruzione servizio elettrico'? Icons.lightbulb_outline : Icons.format_paint , color: Colors.black87,),
      key: PageStorageKey<Entry>(root),
      title: Text(root.title, style: TextStyle(color: Colors.black87, fontSize: 18.0,), textAlign: TextAlign.center,),
      backgroundColor: Colors.grey[300],
      children: root.children.map<Widget>(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);

  }
}
