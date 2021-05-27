import 'package:flutter/material.dart';
import 'package:silatpedia/tutorial6/videotangkisutama.dart';
//import 'package:edukasi/1/video.dart';

class ArticelTangkis extends StatefulWidget {
  static const routeName = '/CardArticle';
  @override
  _ArticelTangkisState createState() => _ArticelTangkisState();
}

class _ArticelTangkisState extends State<ArticelTangkis> {
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
                            'assets/images/tangkisan.gif',
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
                          Text('Tangkisan',
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
                              Text('TANGKISAN',
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
                            child: Image.asset('assets/images/tangkisan.gif',
                                width: widthC,
                                height: 200,
                                fit: BoxFit.contain),
                          ),

                          SizedBox(height: 20),
                          //=============
                          //   Subtitle
                          //=============
                          Text(
                            'Tangkisan adalah usaha pembelaan dengan cara memindahkan sasaran dari arah serangan lawan dengan cara mengadakan kontak langsung dengan serangan.Kontak langsung yang dilakukan pada teknik tangkisan bertujuan untuk: mengalihkan serangan dari lintasan, dan membendung atau menahan serangan, jika terpaksa.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(height: 10),

                          /*Divider(
                            height: 5,
                            color: _color,
                          ),*/

                          SizedBox(height: 10),

                          //=============
                          //   Subtitle
                          //=============
                          Text(
                            'Sikap menangkis selalu disertai sikap kuda-kuda dan sikap tubuh dengan menggunakan satu tangan, siku, dua tangan, dan kaki/tungkai. Terhadap serangan yang mempunyai bentuk dan arah/lintasan yang bervariasi, maka tangkisan mempunyai variasi sebagai berikut: posisi tinggi atau rendah, dengan tangan terbuka atau tertutup, dan arah ke dalam atau keluar.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(height: 10),

                          /*Divider(
                            height: 5,
                            color: _color,
                          ),*/

                          SizedBox(height: 10),
                          Text(
                            'Sedangkan unsur lainnya dalam elakan dan tangkisan adalah sikap tangan, sikap kaki/tungkai, dan sikap tubuh/togok. Adapun jenis tangkisan yang ada di teknik dasar pencak silat yaitu sebagai berikut :',
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'a.	Tangkis dalam',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 3),
                          Text(
                            'Sikap awal berdiri tegak dengan kedua kaki rapat pada tumitnya dan kedua tangan berada di depan dada.Gerakan yang dilakukan adalah melangkah salah satu kaki ke belakang (misalnya kaki kiri) disertai dengan tangan kanan (tangan yang untuk menangkis) bergerak ke samping kiri (ke dalam). Tangan kanan saat bergerak menghadap ke belakang dengan jari-jari tangan terbuka, sedangkan tangan kiri tetap berada di depan dada dengan sikap siaga. Perkenaan tangkisan pada lengan bawah atau pada pisau tangan dekat pergelangan tangan kanan.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'b. Tangkis luar',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 3),
                          Text(
                            'Sikap awal berdiri tegak dengan kedua kaki rapat pada tumitnya dan kedua tangan berada di depan dada. Gerakan yang dilakukan adalah melangkah salah satu kaki ke belakang (misalnya kaki kiri) disertai dengan tangan kanan (tangan yang untuk menangkis) bergerak ke samping kanan (ke luar). Tangan kanan saat bergerak menghadap ke depan dengan jari-jari tangan terbuka, sedangkan tangan kiri tetap berada di depan dada dengan sikap siaga. Perkenaan tangkisan pada lengan bawah atau pada pisau tangan dekat pergelangan tangan kanan.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'c.	Tangkis atas',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 3),
                          Text(
                            'Sikap awal berdiri tegak dengan kedua kaki rapat pada tumitnya dan kedua tangan berada di depan dada. Gerakan yang dilakukan adalah melangkah salah satu kaki ke belakang (misalnya kaki kiri) disertai dengan tangan kanan (tangan yang untuk menangkis) bergerak ke atas. Saat bergerak lengan bawah tangan kanan tetap horizontal sehingga siku tangan kanan bergerak mengikuti ke atas. Tangan kanan saat bergerak menghadap ke depan dengan jari-jari tangan terbuka, sedangkan tangan kiri tetap berada di depan dada dengan sikap siaga. Perkenaan tangkisan pada lengan bawah atau pada pisau tangan dekat pergelangan tangan kanan.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'd. Tangkis bawah',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 3),
                          Text(
                            'Sikap awal berdiri tegak dengan kedua kaki rapat pada tumitnya dan kedua tangan berada di depan dada. Gerakan yang dilakukan adalah melangkah salah satu kaki ke belakang (misalnya kaki kiri) disertai dengan tangan kanan (tangan yang untuk menangkis) bergerak ke bawah di depan badan. Tapak tangan kanan saat bergerak menghadap ke belakang dengan jari-jari tangan terbuka, sedangkan tangan kiri tetap berada di depan dada dengan sikap siaga. Perkenaan tangkisan pada lengan bawah atau pada pisau tangan dekat pergelangan tangan kanan.',
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
                                          VideoTangkisUtama())),
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
                            'Selain tangkisan, dalam ilmu bela diri – termasuk pencak silat – dikenal teknik elakan. Teknik ini merupakan teknik gerakan menghindar dengan memindahkan dan menggerakkan posisi tubuh dari arah serangan pukulan maupun tendangan lawan. Teknik elakan dibagi menjadi: elakan atas, elakan bawah dan elakan samping, dan elakan putar.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16.0),
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

//  _buildTitle(String text) {
  //  return Wrap(
  //  children: <Widget>[
  //  Text('$text',
  //    style: TextStyle(
  //      color: _color, fontStyle: FontStyle.italic, fontSize: 20))
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
