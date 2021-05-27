import 'package:flutter/material.dart';
import 'package:silatpedia/tutorial3/videopolalangkah.dart';

class VideoPolalangkahUtama extends StatefulWidget {
  const VideoPolalangkahUtama({Key key}) : super(key: key);

  @override
  _VideoPolalangkahUtamaState createState() => _VideoPolalangkahUtamaState();
}

class _VideoPolalangkahUtamaState extends State<VideoPolalangkahUtama> {
  final List<Map<String, dynamic>> samples = [
    {'name': 'Back Materi Pola Langkah', 'widget': VideoAppPolalangkah()},
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
          title: Text('Video Pencaksilat Pola Langkah'),
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
