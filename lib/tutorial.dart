import 'package:flutter/material.dart';
import 'package:silatpedia/tutorial1/articlekuda-kuda.dart';
import 'package:silatpedia/tutorial2/articlesikappasang.dart';
import 'package:silatpedia/tutorial3/articlepolalangkah.dart';
import 'package:silatpedia/tutorial4/articlepukulan.dart';
import 'package:silatpedia/tutorial5/articletendangan.dart';
import 'package:silatpedia/tutorial6/articletangkis.dart';

class ListTutorial extends StatefulWidget {
  static const routeName = '/StandardImageList';
  @override
  _ListTutorialState createState() => _ListTutorialState();
}

class _ListTutorialState extends State<ListTutorial> {
  final MyGridView myGridView = new MyGridView();

  @override
  Widget build(BuildContext context) {
    /// ------------------------------------
    /// Build main content with safeArea widget
    /// ------------------------------------
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tutorial'),
          backgroundColor: Colors.lightGreen,
        ),
        body: new Container(
          decoration: BoxDecoration(
            /// ------------------------------------
            /// Decoration Image background
            /// ------------------------------------
            ///image: DecorationImage(
            ///colorFilter: new ColorFilter.mode(
            ///Colors.black.withOpacity(0.7), BlendMode.darken),
            ///image: new AssetImage('assets/images/03.png'),
            ///fit: BoxFit.cover),
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
          child: myGridView,
        ),
      ),
    );
  }
}

class MyGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// ------------------------------------
    /// Main content gridView.count
    /// ------------------------------------
    return GridView.count(
      primary: true,
      physics: BouncingScrollPhysics(),
      padding: const EdgeInsets.all(1.0),
      crossAxisCount: 2,
      childAspectRatio: 1,
      mainAxisSpacing: 3.0,
      crossAxisSpacing: 3.0,
      children: <Widget>[
        Container(
          decoration: new BoxDecoration(
            color: Colors.lightGreen,
            borderRadius: BorderRadius.circular(20.0),
          ),
          alignment: Alignment.centerRight,
          child: new SizedBox.expand(
            child: Container(
              alignment: Alignment.center,
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: new FlatButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ArticelKudakuda())),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(
                          "assets/images/logokudakuda.png",
                          fit: BoxFit.contain,
                          width: 150.0,
                          height: 100.0,
                          alignment: Alignment.center,
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
                          'KUDA - KUDA',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),

        Container(
          decoration: new BoxDecoration(
            color: Colors.lightGreen,
            borderRadius: BorderRadius.circular(20.0),
          ),
          alignment: Alignment.centerRight,
          child: new SizedBox.expand(
            child: Container(
              alignment: Alignment.center,
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: new FlatButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ArticelSikappasang())),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(
                          "assets/images/logopasang.png",
                          fit: BoxFit.contain,
                          width: 150.0,
                          height: 100.0,
                          alignment: Alignment.center,
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
                          'SIKAP PASANG',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),

        Container(
          decoration: new BoxDecoration(
            color: Colors.lightGreen,
            borderRadius: BorderRadius.circular(20.0),
          ),
          alignment: Alignment.centerRight,
          child: new SizedBox.expand(
            child: Container(
              alignment: Alignment.center,
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: new FlatButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ArticelPolalangkah())),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(
                          "assets/images/logopolalangkah.png",
                          fit: BoxFit.contain,
                          width: 150.0,
                          height: 100.0,
                          alignment: Alignment.center,
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
                          'POLA LANGKAH',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),

        Container(
          decoration: new BoxDecoration(
            color: Colors.lightGreen,
            borderRadius: BorderRadius.circular(20.0),
          ),
          alignment: Alignment.centerRight,
          child: new SizedBox.expand(
            child: Container(
              alignment: Alignment.center,
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: new FlatButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ArticelPukulan())),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(
                          "assets/images/logopukulan.png",
                          fit: BoxFit.contain,
                          width: 150.0,
                          height: 100.0,
                          alignment: Alignment.center,
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
                          'PUKULAN',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),

        Container(
          decoration: new BoxDecoration(
            color: Colors.lightGreen,
            borderRadius: BorderRadius.circular(20.0),
          ),
          alignment: Alignment.centerRight,
          child: new SizedBox.expand(
            child: Container(
              alignment: Alignment.center,
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: new FlatButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ArticelTendangan())),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(
                          "assets/images/logotendang.png",
                          fit: BoxFit.contain,
                          width: 150.0,
                          height: 100.0,
                          alignment: Alignment.center,
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
                          'TENDANGAN',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),

        Container(
          decoration: new BoxDecoration(
            color: Colors.lightGreen,
            borderRadius: BorderRadius.circular(20.0),
          ),
          alignment: Alignment.centerRight,
          child: new SizedBox.expand(
            child: Container(
              alignment: Alignment.center,
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: new FlatButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ArticelTangkis())),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(
                          "assets/images/logotangkis.png",
                          fit: BoxFit.contain,
                          width: 150.0,
                          height: 100.0,
                          alignment: Alignment.center,
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
                          'TANGKISAN',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),

//        getStructuredGridCell("GridView", "assets/images/01.png"),
//        getStructuredGridCell("GridView", "assets/images/02.png"),
//        getStructuredGridCell("GridView", "assets/images/air-hostess.png"),
//        getStructuredGridCell("GridView", "assets/images/airplane.png"),
//        getStructuredGridCell("GridView", "assets/images/taxi-driver.png"),
//        getStructuredGridCell("GridView", "assets/images/waiter.png"),
//        getStructuredGridCell("GridView", "assets/images/01.png"),
//        getStructuredGridCell("GridView", "assets/images/02.png"),
//        getStructuredGridCell("GridView", "assets/images/air-hostess.png"),
//        getStructuredGridCell("GridView", "assets/images/airplane.png"),
//        getStructuredGridCell("GridView", "assets/images/taxi-driver.png"),
//        getStructuredGridCell("GridView", "assets/images/waiter.png"),
//        getStructuredGridCell("GridView", "assets/images/01.png"),
//        getStructuredGridCell("GridView", "assets/images/02.png"),
//        getStructuredGridCell("GridView", "assets/images/air-hostess.png"),
//        getStructuredGridCell("GridView", "assets/images/airplane.png"),
//        getStructuredGridCell("GridView", "assets/images/taxi-driver.png"),
//s        getStructuredGridCell("GridView", "assets/images/waiter.png"),
      ],
    );
  }

  /// ------------------------------------
  /// GestureDetector widget item in grid
  /// ------------------------------------
  GestureDetector getStructuredGridCell(name, image) {
    return new GestureDetector(
        child: Card(
          /// ------------------------------------
          /// RoundedRectangleBorder widget item for grid
          /// ------------------------------------
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 20,
          margin: EdgeInsets.only(top: 10, left: 5, right: 5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(

                    /// ------------------------------------
                    /// Main content image widget item for grid
                    /// ------------------------------------
                    image: AssetImage(image),
                    fit: BoxFit.fill),
              ),
            ),
          ),
        ),
        onTap: () {});
  }
}
