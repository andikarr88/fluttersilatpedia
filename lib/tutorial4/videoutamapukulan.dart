import 'package:flutter/material.dart';
import 'package:silatpedia/tutorial4/videopukulan.dart';

class VideoPukulanUtama extends StatefulWidget {
  const VideoPukulanUtama({Key key}) : super(key: key);

  @override
  _VideoPukulanUtamaState createState() => _VideoPukulanUtamaState();
}

class _VideoPukulanUtamaState extends State<VideoPukulanUtama> {
  final List<Map<String, dynamic>> samples = [
    {'name': 'Back Materi Pukulan', 'widget': VideoAppPukulan()},
  ];

  int selectedIndex = 0;

  //changeSample(int index) {
  //if (samples[index]['widget'] is VideoTangkisUtama) {
  //Navigator.of(context).push(MaterialPageRoute(
  //builder: (context) => VideoTangkisUtama(),
  //));
  //} else {
  //setState(() {
  //selectedIndex = index;
  //});
  //}
  //}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: Text('Video Pencaksilat Pukulan'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(height: 10),
            Container(
              child: samples[selectedIndex]['widget'],
            ),
            Container(
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: samples.asMap().keys.map((index) {
                    return Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          //changeSample(index);
                        },
                        child: Center(
                          child: Container(
                            padding: EdgeInsets.all(20),
                            //child: Text(
                            //samples.asMap()[index]['name'],
                            //style: TextStyle(
                            //color: index == selectedIndex
                            //  ? Color.fromRGBO(100, 109, 236, 1)
                            //: Color.fromRGBO(173, 176, 183, 1),
                            //fontWeight: index == selectedIndex
                            //? FontWeight.bold
                            //: null,
                            //),
                            //),
                          ),
                        ),
                      ),
                    );
                  }).toList()),
            ),
          ],
        ));
  }
}
