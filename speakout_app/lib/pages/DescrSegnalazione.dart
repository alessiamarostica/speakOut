import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'dart:async';
import 'Separator.dart';
import 'Dialog.dart';
class Descrizione extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _DescrizioneState();
}
class _DescrizioneState extends State<Descrizione> {
  File _image;
  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image;
    });
  }
  Dialogs dialogs = new Dialogs();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Aggiungi Segnalazione'),
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black87),
          onPressed: () => Navigator.pop(context, false),
        ),
        backgroundColor: Colors.white,
      ),
      body: new Container(
        child: new SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 10.0, top: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Titolo segnalazione',
                  style: TextStyle(color: Colors.black87, fontSize: 20),
                  textAlign: TextAlign.left,
                ),
                Separator(),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 2.0, right: 10.00, top: 5.0, bottom: 10.0),
                    child: TextField(
                      minLines: 1,
                      maxLines: 1,
                      autocorrect: false,
                      decoration: InputDecoration(
                        hintText: 'Scrivi qui...',
                        filled: false,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          borderSide: BorderSide(color: Colors.grey[300]),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          borderSide: BorderSide(color: Colors.grey[300]),
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  'Cosa vuoi segnalare?',
                  style: TextStyle(color: Colors.brown[800], fontSize: 20),
                  textAlign: TextAlign.left,
                ),
                Separator(),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 2.0, right: 10.00, top: 5.0, bottom: 10.0),
                    child: TextField(
                      minLines: 5,
                      maxLines: 5,
                      autocorrect: false,
                      decoration: InputDecoration(
                        hintText:
                            'Scrivi qui la descrizione della segnalazione...',
                        filled: false,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          borderSide: BorderSide(color: Colors.grey[300]),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          borderSide: BorderSide(color: Colors.grey[300]),
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  'Dove ti trovi? (facoltativo)',
                  style: TextStyle(color: Colors.black87, fontSize: 20),
                  textAlign: TextAlign.left,
                ),
                Separator(),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 2.0, right: 10.00, top: 5.0, bottom: 10.0),
                    child: TextField(
                      minLines: 1,
                      maxLines: 1,
                      autocorrect: false,
                      decoration: InputDecoration(
                        hintText: 'Scrivi qui il tuo indirizzo...',
                        filled: false,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          borderSide: BorderSide(color: Colors.grey[300]),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          borderSide: BorderSide(color: Colors.grey[300]),
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  'Aggiungi Foto (facoltativo)',
                  style: TextStyle(color: Colors.black87, fontSize: 20),
                  textAlign: TextAlign.left,
                ),
                Separator(),
                Container(
                  margin: EdgeInsets.only(top: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      FloatingActionButton(
                        onPressed: getImage,
                        tooltip: 'Aggiungi Foto',
                        backgroundColor: Colors.grey[500],
                        child: new Icon(Icons.camera_alt, color:Colors.white),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20.0),
                        child: _image == null
                            ? new Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: Colors.grey[50],
                                  border: Border.all(
                                    color: Colors.grey[400],
                                    width: 0.4,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    'Nessuna Immagine',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 12,
                                    ),
                                  ),
                                ))
                            : new Image.file(
                                _image,
                                height: 80,
                                width: 80,
                              ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10.0),
                        child: new Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.grey[50],
                            border: Border.all(
                              color: Colors.grey[400],
                              width: 0.4,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              'Nessuna Immagine',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(left: 10.0),
                        child: new Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.grey[50],
                            border: Border.all(
                              color: Colors.grey[400],
                              width: 0.4,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              'Nessuna Immagine',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      MaterialButton(
                        child: Text(
                          'Invia Segnalazione',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        color: Colors.grey[800],
                        splashColor: Colors.grey[900],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.00),
                        ),
                        onPressed: ()=> dialogs.segnalazioneEseguita(context,'La tua segnalazione è stata inviata!'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
