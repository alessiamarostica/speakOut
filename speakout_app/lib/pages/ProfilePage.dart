import 'package:bottomnavbar/pages/LoginPage.dart';
import 'package:bottomnavbar/pages/MieSegnalazioni.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Dialog.dart';

class Profile extends StatefulWidget {

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  Dialogs dialogs = new Dialogs();
  //  Cards c
  Card statsWidget() {
    return new Card(
        elevation: 1.5,
        margin: EdgeInsets.only(bottom: 160.0, left: 20.0, right: 20.0),
        color: Colors.white,
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            new Padding(
              padding: EdgeInsets.all(20.0),
              child: new Row(
                children: <Widget>[
                  new Expanded(
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Align(
                            alignment: Alignment.center,
                            child: new Text(
                              "ALESSIA MAROSTICA",
                              textAlign: TextAlign.center,
                              style: new TextStyle(
                                color: Colors.black54,
                                fontSize: 22.0,
                              ),
                            )),
                        new Align(
                            alignment: Alignment.center,
                            child: new Text(
                              "27/03/1996",
                              textAlign: TextAlign.center,
                              style: new TextStyle(
                                color: Colors.black45,
                              ),
                            )),
                      ],
                    ),
                    flex: 1,
                  ),
                ],
              ),
            )
          ],
        ));
  }

  Card statsWidget2() {

    return new Card(
      elevation: 0.0,
      margin: EdgeInsets.only(top: 200.0, left: 20.0, right: 20.0),
      color: Colors.white,
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        verticalDirection: VerticalDirection.down,
        children: <Widget>[
          new RaisedButton(
              child: Text(
                'Le Mie Segnalazioni',
                style: TextStyle(color: Colors.black87, fontSize: 18),
              ),
              color: Colors.white,
              splashColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.00),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MieSegnalazioni()),
                );
              },
            elevation: 5.0,
            ),

            RaisedButton(
              child: Text(
                'Termini e Condizioni',
                style: TextStyle(color: Colors.black87, fontSize: 18),
              ),
              color: Colors.white,
              splashColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.00),
              ),
              onPressed: () => dialogs.information(context,'Termini e Condizioni','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
              elevation: 5.0,
            ),


             RaisedButton(
              child: Text(
                'Privacy',
                style: TextStyle(color: Colors.black87, fontSize: 18),
              ),
              color: Colors.white,
              splashColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.00),
              ),
    onPressed: () => dialogs.information(context,'Privacy','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
elevation: 5.0,
            ),


           MaterialButton(
              child: Text(
                'LogOut',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              color: Colors.red[300],
              splashColor: Colors.red[200],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.00),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
             elevation: 7.0,
            ),
        ],
      ),
    );
  }

  @override
  build(BuildContext context) {

    return new Material(
        type: MaterialType.transparency,
        child: new Stack(
          children: [
            new Column(
              children: <Widget>[
                headerWidget(),
                bodyWidget(),
              ],
            ),
            new Center(
              child: statsWidget(),
            ),
            new Center(
              child: statsWidget2(),
            ),
          ],
        ));
  }

  /* Header colorato di marroncino */
  Widget headerWidget() {
    var header = new Expanded(
      child: new Container(
        decoration: new BoxDecoration(
          color: Colors.grey[200],
          /*image: new DecorationImage(
            image: new AssetImage('assets/images/iconaApp.png'),
          ),*/
        ),
        child: new Center(
          child: new Container(
            margin: EdgeInsets.only(bottom: 10.0),
            height: 300.0,
            width: 300.0,
            decoration: new BoxDecoration(
              color: Colors.grey[200],
              image: new DecorationImage(
                image: new AssetImage('assets/images/iconaApp.png')
              ),
            ),
          ),
        ),
      ),
      flex: 1,
    );
    return header;
  }

  /* Body inferiore bianco */
  Widget bodyWidget() {
    var bodyWidget = new Expanded(
      child: new Container(
        decoration: new BoxDecoration(
          color: Colors.white,
        ),
      ),
      flex: 2,
    );
    return bodyWidget;
  }
}
