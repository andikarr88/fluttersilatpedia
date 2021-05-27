import 'package:flutter/material.dart';

import 'package:silatpedia/tutorial3/videoutamalangkah.dart';

class ArticelPolalangkah extends StatefulWidget {
  static const routeName = '/CardArticle';
  @override
  _ArticelPolalangkahState createState() => _ArticelPolalangkahState();
}

class _ArticelPolalangkahState extends State<ArticelPolalangkah> {
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
                            'assets/images/polalangkah.jpg',
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
                          Text('Pola Langkah',
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
                              Text('POLA LANGKAH',
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
                            child: Image.asset('assets/images/polalangkah.jpg',
                                width: widthC,
                                height: 200,
                                fit: BoxFit.contain),
                          ),

                          SizedBox(height: 20),
                          //=============
                          //   Subtitle
                          //=============
                          Text(
                            'Pola langkah adalah salah satu teknik dasar yang menjadi ciri khas pencak silat, yang mana pola langkah atau penggunaan langkah ialah perubahan injakan kaki dari sudut tempat ke tempat yang lain. Dalam hal lain intinya pencak silat itu adalah gabungan dari kekokohan kuda-kuda yang dikombinasikan dengan fleksibel atau luwesnya pergerakan langkah dan disempurkanan dengan pemahaman arah yang benar. Dari hal tersebut ketika pesilat sudah mengusai hal itu, serangannya akan sulit dibaca dan pertahanannya akan sulit ditembus oleh lawan.',
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
                            'Berbicara mengenai pola langkah, ada 7 jenis yang sudah dikenal dan digunakan dalam banyak perguruan pencak silat, antara lain:',
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          Text(
                            '•	Pola langkah lurus',
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          Text(
                            '•	Pola langkah segiempat',
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          Text(
                            '•	Pola langkah U',
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          Text(
                            '•	Pola langkah zig zag',
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          Text(
                            '•	Pola langkah S',
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          Text(
                            '•	Pola langkah segitiga',
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          Text(
                            '•	Pola langkah segi empat silang',
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
                                          VideoPolalangkahUtama())),
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

                          SizedBox(height: 20),

                          //====================
                          //   Description 3
                          //====================
                          Text(
                            'Dari penjelasan diatas yang mana terdapat 7 jenis pola langkah dalam pencak silat, selanjutnya dari ke tujuh pola langkah tersebut dijelaskan pada gambar dibawah ini :',
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16.0),
                          ),

                          SizedBox(height: 20),

                          //==============
                          //   Image
                          //==============
                          Container(
                            width: widthC,
                            height: 200,
                            child: Image.asset('assets/images/gambar_pola.jpg',
                                width: widthC,
                                height: 200,
                                fit: BoxFit.contain),
                          ),

                          SizedBox(height: 20),

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

  // _buildTitle(String text) {
  // return Wrap(
  // children: <Widget>[
  // Text('$text',
  //   style: TextStyle(
  //     color: _color, fontStyle: FontStyle.italic, fontSize: 20))
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
