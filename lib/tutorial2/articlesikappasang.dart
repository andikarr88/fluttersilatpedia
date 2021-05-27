import 'package:flutter/material.dart';
import 'package:silatpedia/tutorial2/videoutamasikappasang.dart';
//import 'package:edukasi/1/video.dart';

class ArticelSikappasang extends StatefulWidget {
  static const routeName = '/ArticelSikappasang';
  @override
  _ArticleSikappasangState createState() => _ArticleSikappasangState();
}

class _ArticleSikappasangState extends State<ArticelSikappasang> {
  List<ArticleRelated> listItems;

  Color _color = Colors.black;
  //Color _color2 = Colors.grey;
  //Color _color3 = Colors.grey;
  //Color _color4 = Colors.blueAccent;
  @override
  void initState() {
    super.initState();

    listItems = [
      ArticleRelated(
        //imageUrl: 'https://i.picsum.photos/id/206/100/100.jpg',
        title:
            'Researchers uncover hidden antibiotic potential of cannabis compound',
      ),
      ArticleRelated(
        //imageUrl: 'https://i.picsum.photos/id/238/100/100.jpg',
        title: 'The challenge of new antibiotic discovery',
      ),
      ArticleRelated(
        //imageUrl: 'https://i.picsum.photos/id/24/100/100.jpg',
        title: 'Antibiotic resistance poses a growing risk during pandemics',
      ),
      ArticleRelated(
        //imageUrl: 'https://i.picsum.photos/id/274/100/100.jpg',
        title:
            'Study finds no advantage in using two antibiotics to treat MRSA infections',
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    double widthC = MediaQuery.of(context).size.width * 100;
    //double heightC = MediaQuery.of(context).size.height * 100;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          tileMode: TileMode.repeated,
          stops: [0.1, 0.4, 0.7, 0.9],
          colors: [
            Color(0xFFFFFFFF),
            Color(0xFFFFFFFF),
            Color(0xFFFFFFFF),
            Color(0xFFFFFFFF),
          ],
        )),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 25),
              //=================
              // personal info
              //=================
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                alignment: Alignment.center,
                child: Row(
                  children: <Widget>[
                    Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(70),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(70),
                          child: Image.asset(
                            'assets/images/sikap_pasang.gif',
                            width: 70,
                            height: 70,
                            fit: BoxFit.fill,
                          ),
                        )),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Penjelasan',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          Text('Materi',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          Text('Sikap Pasang',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: widthC,
                margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                child: Container(
                  child: Card(
                    child: Container(
                      margin: const EdgeInsets.only(
                          top: 20, bottom: 20, left: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 20),

                          //=============
                          //   title
                          //=============
                          Wrap(
                            children: <Widget>[
                              Text('SIKAP PASANG',
                                  style: TextStyle(
                                      fontSize: 26,
                                      color: _color,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),

                          SizedBox(height: 20),

                          //==============
                          //   Image
                          //==============
                          Container(
                            width: widthC,
                            height: 200,
                            child: Image.asset('assets/images/sikap_pasang.gif',
                                width: widthC,
                                height: 200,
                                fit: BoxFit.contain),
                          ),

                          SizedBox(height: 20),
                          //=============
                          //   Subtitle
                          //=============
                          Text(
                            'Dalam gerakan ini yang mana sikap pasang merupakan sebuah posisi yang biasanya dikombinasikan dengan kuda-kuda dan posisi ini bersifat fleksibel. Disaat seorang pesilat bergerak ketika bertarung, sikap dan gerakannya akan selalu berubah sering dengan perubahan posisi lawan. Setelah menangkap sebuah titik celah pertahanan lawan, selanjutnya pesilat akan mencoba menyerang dengan serangan cepat, tepat dan tentunya terukur.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(height: 10),

                          Divider(
                            height: 5,
                            color: _color,
                          ),

                          SizedBox(height: 10),

                          //=============
                          //   Subtitle
                          //=============
                          Text(
                            'Ada banyak sikap pasang dalam teknik dasar pencak silat, karena posisi ini merupakan ciri khas dari setiap aliran atau perguruan yang bisa membedakan antara satu dengan yang lainnya. Namun secara umum ada empat sikap pasang yang sudah dikenal secara luas, antara lain:',
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '1.	Pasang satu (Sikap pasang dengan posisi badan tegak dan kedua tangan disamping dalam keaadaan siap silat dan kedua kaki di buka selebar bahu).',
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(height: 3),
                          Text(
                            '2.	Pasang dua (Sikap pasang dengan badan tetap pada posisi tegak, kaki dibuka selebar bahu, kedua tangan mengepal dan sejajar dengan pinggang).',
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(height: 3),
                          Text(
                            '3.	Pasang tiga (Sikap pasang dengan badan pada posisi tegak lurus, kaki di buka selebar bahu, tangan diangkat sejajar mata, dan posisi menyilang dengan tangan terbuka).',
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(height: 3),
                          Text(
                            '4.	Pasang empat (Sikap pasang dengan kaki di buka selebar bahu, tangan diangkat sejajar mata, dengan posisi menyilang dan tangan mengepal).',
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16.0),
                          ),

                          SizedBox(height: 10),

                          Divider(
                            height: 5,
                            color: _color,
                          ),

                          SizedBox(height: 10),

                          //==============================
                          //  Suggested Reading  Title
                          //==============================
                          Container(
                            margin: EdgeInsets.only(bottom: 10, top: 10),
                            child:
                                Text('Video', style: TextStyle(fontSize: 20)),
                          ),

                          //==============================
                          //  list of Suggested Reading
                          //==============================
                          Container(
                            height: 200,
                            width: widthC,
                            alignment: Alignment.center,
                            child: FlatButton(
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          VideoPasangUtama())),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.asset(
                                  "assets/images/video-icon.png",
                                  fit: BoxFit.cover,
                                  width: 150.0,
                                  height: 150.0,
                                ),
                              ),
                            ),
                          ),

                          SizedBox(height: 10),

                          Divider(
                            height: 5,
                            color: _color,
                          ),

                          SizedBox(height: 70),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //_buildTitle(String text) {
  //return Wrap(
  //children: <Widget>[
  //Text('$text',
  //  style: TextStyle(
  //    color: _color, fontStyle: FontStyle.italic, fontSize: 20))
  //],
  //);
  //}

  //_buildDescription(String text) {
  //return Wrap(
  //children: <Widget>[
  //Text('$text', style: TextStyle(color: _color, fontSize: 16))
  //],
  //);
  //}
}

class ArticleRelated extends StatelessWidget {
  final String imageUrl;
  final String title;
  ArticleRelated({this.imageUrl, this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 250,
        height: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.network(imageUrl, width: 250, height: 150, fit: BoxFit.fill),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '$title',
                style: TextStyle(color: Colors.black, fontSize: 16),
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
