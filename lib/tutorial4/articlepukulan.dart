import 'package:flutter/material.dart';
import 'package:silatpedia/tutorial4/videoutamapukulan.dart';
//import 'package:edukasi/1/video.dart';

class ArticelPukulan extends StatefulWidget {
  static const routeName = '/CardArticle';
  @override
  _ArticelPukulanState createState() => _ArticelPukulanState();
}

class _ArticelPukulanState extends State<ArticelPukulan> {
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
                            'assets/images/pukulan.jpg',
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
                          Text('Pukulan',
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
                              Text('PUKULAN',
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
                            child: Image.asset('assets/images/pukulan.jpg',
                                width: widthC,
                                height: 200,
                                fit: BoxFit.contain),
                          ),

                          SizedBox(height: 20),
                          //=============
                          //   Subtitle
                          //=============
                          Text(
                            'Pukulan adalah gerakan yang menggunakan tangan dan lengan. Pukulan merupakan teknik serangan dengan menggunakan tangan atau lengan, berdasarkan lintasan dan perkenaannya meliputi pukulan tusuk, pukulan sangga, pukulan getok, pukulan totok, pukulan tinju, pukulan tampar, pukulan pagut, pukulan cambuk, pukulan busur, pukulan lingkar, pukulan tebas, pukulan papas, pukulan depan, dan pukulan samping Mulyana (2014:119). Pukulan merupakan usaha yang dilakukan baik dalam menyerang atau bertahan dengan menggunakan lengan tangan dalam olahraga pencak silat. Dalam hal ini yang mana gerakan pukulan yang ada di teknik dasar pencak silat ada empat jenis pukulan yang harus dikuasai, antara lain:',
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
                            'Jadi dari definisi para ahli tersebut dapat disimpulkan bahwa tangan dan lengan merupakan teknik serangan pukulan. Teknik pukulan sendiri harus memiliki sasaran (bagian-bagian tubuh yang boleh diserang atau dipukul), bidang sasaran (pukulan yang digunakan kepalan tangan), dan lintasan (sesuai dengan peraturan yang ada pukulan harus lurus). Teknik pukulan yang baik dan benar sendiri memiliki tujuan agar tidak terjadi sesuatu hal yang tidak diinginkan seperti cidera.',
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
                            'Terdapat 4 (empat) macam teknik serangan pukulan menurut Kotot (2003:60-67), sebagai berikut:',
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'a)	Pukulan Lurus',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 3),
                          Text(
                            'Pukulan pada pencak silat dilakukan dengan menggunakan tangan dan lengan dengan sasaran pukulan lurus kedepan. Pukulan yang dilaksanakan dengan sebelah tangan dan lengan, lintasannya lurus kedepan dan perkenaannya pada ujung jari-jari tangan merapat, punggung tangan terbuka yang melemas, buku-buku jari tangan merapat, buku jari tengah atau kepalan tangan (Notosoejitno, 1997:70)',
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          Text(
                            'Berdasarkan penjelasan yang dikemukakan diatas  dapat didefinisikan bahwa pukulan depan merupakan pukulan yang dilakukan dengan meluruskan lengan tangan, mengepalkan jari-jari, dan penyasar menggunakan punggung jari. Pukulan depan dilakukan memutar lengan dari menghadap ke atas lalu ke bawah dengan tujuan untuk mendapatkan tekanan pukulan lebih besar pada bidang sasaran, lintasan harus lurus ke depan sejajar dengan bahu tidak boleh melebihi bahu. Untuk dapat menghasilkan pukulan yang optimal, pukulan depan harus dilakukan dengan bantuan pergerakan bahu dan pinggang untuk pemindahan berat badan ke depan agar mendapatkan tenaga yang optimal. Dalam teknik pukulan ini yang sering dijadikan bidang sasaran adalah kepala, leher, dan dada.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'b)	Pukulan Tegak',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 3),
                          Text(
                            'Seperti halnya pukulan lurus, jenis pukulan ini mempunyai sasaran yaitu bahu. Biasanya pukulan ini dilakukan ketika pesilat saling berhadapan dalam kondisi bahu lawan yang terbuka.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          Text(
                            'Selanjutnya adapun pelaksanaan dari pukulan bandul yaitu :',
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          Text(
                            '1.	Posisi sikap kuda-kuda berada di tengah',
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          Text(
                            '2.	Kedua tangan bersiap di depan dada, sementara tangan yang akan memukul jari jarinya dalam posisi mengepal rapat.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          Text(
                            '3.	Sedangkan tangan kanan kemudian memukul ke depan dengan kepalan tegak.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          Text(
                            '4.	Sementara tangan yang satunya lagi dalam posisi menutup atau melindungi badan sendiri.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          Text(
                            '5.	Segera lakukan dengan mengubah atau mengganti posisi kaki dan tangan yang memukul secara bergantian.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'c)	Pukulan Bandul',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 3),
                          Text(
                            'Menurut Lubis dan Wardoyo (2014:33), “Serangan yang menggunakan lengan dengan tangan mengepal, lintasan dari bawah ke atas dengan perkenaannya kepalan tangan terbalik ke sasaran kemaluan, ulu hati, dan dagu”. Sedangkan menurut Kotot (2003:64), menjelaskan bahwa “pukulan sangkol merupakan teknik pukulan yang arah serangannya datang dari bawah dengan posisi tangan menekuk membentuk sudut ± 90º.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          Text(
                            'Berdasarkan definisi para ahli di atas dapat disimpulkan bahwa pukulan sangkol merupakan serangan dengan pukulan yang dilaksanakan dengan menggunakan tangan mengepal dengan lengan ditekuk dan untuk lintasan pukulan diayun dari bawah ke atas dengan penyasar punggung jari. Pukulan ini dapat dilakukan dengan posisi kaki yang bervariasi, baik dengan posisi kaki sejajar dengan tangan yang digunakan untuk menyerang maupun tidak.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'd)	Pukulan Melingkar',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 3),
                          Text(
                            'Menurut Johansyah  Lubis (2004:23) “serangan yang menggunakan lengan dengan tangan mengepal, lintasannya melingkar dari luar ke dalam, titik sasarannya rahang dan rusuk, posisi tangan mengepal menghadap ke bawah, dengan perkenaannya seluruh buku-buku jari. Sedangkan Menurut Kotot (2003:66) “pukulan lingkar merupakan pukulan dari samping luar tubuh dengan tangan mengepal, sasaran yang dituju adalah dada dan punggung, selain itu tangan yang dipergunakan terutama pada pangkal jari telunjuk dan jari tengah”.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          Text(
                            'Berdasarkan penjelasan diatas dapat disimpulkan bahwa pukulan samping merupakan teknik pukulan yang dilakukan dengan mengayunkan lengan dan tangan dari samping ke depan dalam dengan tangan mengepal dan penyasarnya adalah buku-buku jari. Tenaga pukulan lingkar diperoleh dari ayunan lengan dan tangan yang bersumber pada bahu. Pada teknik serangan ini yang sering digunakan sebagai sasaran adalah rusuk, bahu, dan punggung.',
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
                                          VideoPukulanUtama())),
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
  // ],
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
