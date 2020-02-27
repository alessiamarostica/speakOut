import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class Dialogs {
  information(BuildContext context, String title, String description) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              title,
              style: TextStyle(color: Colors.black87),
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text(
                    description,
                    style: TextStyle(color: Colors.black45),
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: () => Navigator.pop(context),
                child: Text(
                  'Ok, ho capito',
                  style: TextStyle(color: Colors.black87, fontSize: 15.0),
                ),
              ),
            ],
          );
        });
  }

  segnalazioneEseguita(BuildContext context, String description) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 25.0, top: 15.0),
                    child: Icon(
                      Icons.check_circle_outline,
                      size: 40.0,
                      color: Colors.green[700],
                    ),
                  ),
                  Text(
                    description,
                    style: TextStyle(color: Colors.black54),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
                child: Text(
                  'Fine',
                  style: TextStyle(color: Colors.black87, fontSize: 15.0),
                ),
              ),
            ],
          );
        });
  }

  filter(BuildContext context) {
    bool animaliVagantiVal = false;
    bool animaliSelvaggiVal = false;
    bool spazzaturaVal = false;
    bool cartelliStradaliVal = false;
    bool dissestoVal = false;
    bool degradoUrbanoVal = false;
    bool illuminazioneVal = false;
    bool verdeVal = false;
    bool vandalismoVal = false;
    bool altroVal = false;
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return StatefulBuilder(builder: (context, setState) {
            return AlertDialog(
              title: Text('Scegli la categoria'),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Container(
                      height: 450,
                      width: 250,
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            // [Monday] checkbox
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Checkbox(
                                  value: animaliVagantiVal,
                                  onChanged: (bool value) {
                                    setState(() {
                                      animaliVagantiVal = value;
                                    });
                                  },
                                ),
                                Text("Animali vaganti"),
                              ],
                            ),
                            // [Tuesday] checkbox
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Checkbox(
                                  value: animaliSelvaggiVal,
                                  onChanged: (bool value) {
                                    setState(() {
                                      animaliSelvaggiVal = value;
                                    });
                                  },
                                ),
                                Text("Animali selvaggi"),
                              ],
                            ),
                            // [Wednesday] checkbox
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Checkbox(
                                  value: spazzaturaVal,
                                  onChanged: (bool value) {
                                    setState(() {
                                      spazzaturaVal = value;
                                    });
                                  },
                                ),
                                Text("Rifiuti"),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Checkbox(
                                  value: cartelliStradaliVal,
                                  onChanged: (bool value) {
                                    setState(() {
                                      cartelliStradaliVal = value;
                                    });
                                  },
                                ),
                                Text("Cartelli stradali"),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Checkbox(
                                  value: dissestoVal,
                                  onChanged: (bool value) {
                                    setState(() {
                                      dissestoVal = value;
                                    });
                                  },
                                ),
                                Text("Dissesto stradale"),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Checkbox(
                                  value: degradoUrbanoVal,
                                  onChanged: (bool value) {
                                    setState(() {
                                      degradoUrbanoVal = value;
                                    });
                                  },
                                ),
                                Text("Degrado urbano"),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Checkbox(
                                  value: illuminazioneVal,
                                  onChanged: (bool value) {
                                    setState(() {
                                      illuminazioneVal = value;
                                    });
                                  },
                                ),
                                Text("Illuminazione"),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Checkbox(
                                  value: verdeVal,
                                  onChanged: (bool value) {
                                    setState(() {
                                      verdeVal = value;
                                    });
                                  },
                                ),
                                Text("Verde comunale"),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Checkbox(
                                  value: vandalismoVal,
                                  onChanged: (bool value) {
                                    setState(() {
                                      vandalismoVal = value;
                                    });
                                  },
                                ),
                                Text("Vandalismo"),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Checkbox(
                                  value: altroVal,
                                  onChanged: (bool value) {
                                    setState(() {
                                      altroVal = value;
                                    });
                                  },
                                ),
                                Text("Altro"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              actions: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  child: Text(
                    'Fine',
                    style: TextStyle(color: Colors.black87, fontSize: 15.0),
                  ),
                ),
              ],
            );
          });
        });
  }

  order(BuildContext context) {
    String _picked = "Ordina per data";
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return StatefulBuilder(builder: (context, setState) {
            return AlertDialog(
              title: Text('Ordine di visualizzazione'),
              content: SingleChildScrollView(

                child: RadioButtonGroup(
                    picked: _picked,
                    labels: <String>[

                  "Ordina per data",
                  "Ordina per nome",
                ],
                    onSelected: (String selected) => setState((){
            _picked = selected;
            })),
              ),
            );
          });
        });
  }
}
