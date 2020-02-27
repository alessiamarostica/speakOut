import 'package:flutter/material.dart';
import 'pages/SegnalazioneClass.dart';

class FullScreenPage extends StatelessWidget {
  Segnalazione segnalazione;
  int n;
  FullScreenPage(this.segnalazione, this.n);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Foto Segnalazione'),
        automaticallyImplyLeading: true,
        leading: IconButton(icon:Icon(Icons.arrow_back, color: Colors.black),
          onPressed:() => Navigator.pop(context, false),
        ),
        backgroundColor: Colors.white,
      ),
        body:Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(n==1 ? segnalazione.image1 : segnalazione.image2),
            fit: BoxFit.cover
        ) ,
      ),
        ),
    );
  }
}