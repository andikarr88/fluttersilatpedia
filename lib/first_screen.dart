import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:silatpedia/tutorial.dart';
//import 'package:silatpedia/utilities/styles.dart';
import 'package:silatpedia/materi.dart';
//import 'package:flutter/services.dart';

class HalamanUtama extends StatefulWidget {
  static const routeName = '/HalamanUtama';
  @override
  _HalamanUtamaState createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  static const routeName = '/HalamanUtama';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        shadowColor: Colors.black,
      ),
      body: Container(
        margin: EdgeInsets.all(0.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 0.4, 0.7, 0.9],
            colors: [
              Color(0xFFFFFFFF),
              Color(0xFFFFFFFF),
              Color(0xFFFFFFFF),
              Color(0xFFFFFFFF),
            ],
          ),
        ),
        child: ListView(
          children: <Widget>[
            /// ----------------------------------------------------------
            /// First expandable widget
            /// ----------------------------------------------------------
            Container(
              constraints: BoxConstraints(maxWidth: 500),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 500,
                    height: 400,
                    margin: const EdgeInsets.symmetric(vertical: 0.0),
                    decoration: new BoxDecoration(
                      image: new DecorationImage(
                          image: new AssetImage('assets/images/Logointro.png'),
                          colorFilter: new ColorFilter.mode(
                              Colors.black.withOpacity(0.45),
                              BlendMode.lighten),
                          fit: BoxFit.contain),
                    ),
                    child: new SizedBox.expand(
                      child: Container(
                        alignment: Alignment.center,
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 18.0),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10.0, right: 10.0),
                                    child: Container(
                                      color: Colors.white,
                                      height: 10,
                                      width: 1.0,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),

                  //second
                  Container(
                    width: 200,
                    height: 90,
                    margin: const EdgeInsets.symmetric(vertical: 0.0),
                    decoration: new BoxDecoration(
                      color: Colors.lightGreen,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: new SizedBox.expand(
                      child: Container(
                        alignment: Alignment.center,
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 18.0),
                              child: new FlatButton(
                                onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Article())),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Text(
                                    'MATERI',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    '',
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.white),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10.0, right: 10.0),
                                    child: Container(
                                      color: Colors.white,
                                      height: 10,
                                      width: 1.0,
                                    ),
                                  ),
                                  Text(
                                    '',
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.white),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),

                  //third
                  Container(
                    width: 200,
                    height: 90,
                    margin: const EdgeInsets.symmetric(vertical: 15.0),
                    decoration: new BoxDecoration(
                      color: Colors.lightGreen,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: new SizedBox.expand(
                      child: Container(
                        alignment: Alignment.center,
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 18.0),
                              child: new FlatButton(
                                onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ListTutorial())),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Text(
                                    'TUTORIAL',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    '',
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.white),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10.0, right: 10.0),
                                    child: Container(
                                      color: Colors.white,
                                      height: 10,
                                      width: 1.0,
                                    ),
                                  ),
                                  Text(
                                    '',
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.white),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),

                  //seven
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
