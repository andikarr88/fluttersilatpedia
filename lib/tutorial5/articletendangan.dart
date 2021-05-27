import 'package:flutter/material.dart';
import 'package:silatpedia/tutorial5/videoutamatendangan.dart';
//import 'package:edukasi/1/video.dart';

class ArticelTendangan extends StatefulWidget {
  static const routeName = '/CardArticle';
  @override
  _ArticelTendanganState createState() => _ArticelTendanganState();
}

class _ArticelTendanganState extends State<ArticelTendangan> {
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
                            'assets/images/tendangan.jpg',
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
                          Text('Tendangan',
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
                              Text('TENDANGAN',
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
                            child: Image.asset('assets/images/tendangan.jpg',
                                width: widthC,
                                height: 200,
                                fit: BoxFit.contain),
                          ),

                          SizedBox(height: 20),
                          //=============
                          //   Subtitle
                          //=============
                          Text(
                            'Pada olahraga pencak silat teknik tendangan sama pentingnya dengan teknik pukulan, akan tetapi tendangan mempunyai kekuatan yang lebih besar dibanding dengan kekuatan pukulan. Pada saat menendang keseimbangan yang baik sangat diutamakan, bukan hanya berat badan ynag bertumpu pada satu kaki saja tetapi juga disebabkan akibat guncangan tenaga balik pada saat benturan. Kaki memiliki jangkauan panjang yang tidak terjangkau oleh tangan. Penggunaan teknik tendangan harus disertai dengan koordinasi yang baik antara sikap kaki, sikap tangan, dan sikap badan.',
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
                            'Menurut Johansyah Lubis (2004: 26) teknik tendangan terbagi menjadi beberapa macam antara lain : tendangan lurus, tendangan tusuk, tendangan kepret, tendangan jejag, tendangan gajul, tendangan T, tendangan celorong, tendangan belakang, tendangan kuda, tendangan taji, tendangan sabit, tendangan baling, tendangan bawah, dan tendangan gejig. Akan tetapi tidak semua tendangan tersebut digunakan dalam pertandingan.',
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
                            'Agung Nugroho (2001: 17) membagi jenis tendangan menjadi 4 menurut perkenaan kakinya, yaitu: (a) Tendangan depan yaitu tendangan yang menggunakan punggung, telapak, ujung telapak, dan tumit kaki; (b) Tendangan samping (T) yaitu tendangan yang menggunakan sisi kaki, telapak kaki dan tumit; dan (c) Tendangan busur (sabit) merupakan tendangan yang menggunakan punggung, ujung telapak kaki busur belakang menggunakan tumit kaki.',
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
                            'Melihat dari efektifitas dan efisiensi gerak, tidak semua tendangan tersebut dapat digunakan dalam pertandingan pencak silat kategori tanding. Tendangan yang tidak efektif dan efisien akan menghambat atlet dalam memperoleh nilai pada pertandingan. Menurut Agung Nugroho jenis tendangan yang sering dilakukan dalam pertandingan pencak silat kategori tanding terdiri dari: (a) tendangan depan, (b) tendangan sabit, (c) tendangan samping atau tendangan T.',
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
                            'a.	Tendangan Lurus (Depan)',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 3),
                          Text(
                            'Tendangan lurus merupakan tendangan termudah pelaksanaannya, dikarenakan cara kerja tendangan lurus yang sederhana, yakni melemparkan tungkai ke depan, setelah terlebih dahulu mengangkat lutut setinggi sasaran (Kotot, 2003:74). Serangan yang menggunakan sebelah kaki dan tungkai, lintasannya kearah depan dengan posisi badan menghadap ke depan, dengan kenaannya pangkal jari-jari bagian dalam, dengan sasaran ulu hati dan dagu (Lubis dan Wardoyo, 2014:36).',
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          Text(
                            'Berdasarkan pernyataan diatas disimpulkan bahwa tendangan lurus adalah tendangan yang mudah dan sederhana untuk dilakukan, pelaksanaannya pada tendangan diawali dengan mengangkat salah satu kaki setinggi sasaran lalu tungkai melakukan lecutan dengan kaki lainnya sebagai tumpuan dengan arah lintasannya ke depan, sasarannya adalah ulu hati dan dagu. Bagian tubuh yang sangat berperan dalam tendangan depan adalah tungkai kaki dan lutut untuk dapat menghasilkan lecutan.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'b.	Tendangan Sabit',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 3),
                          Text(
                            'Tendangan sabit adalah tendangan dengan lintasan gerakannya setengah lingkaran ke dalam dan yang menjadi sasaran adalah tubuh, telapak kaki dan jari telapak kaki. Tendangan sabit, merujuk pada namanya, merupakan teknik tendangan yang lintasan gerakannya membentuk garis setengah lingkaran, atau tendangan ini cara kerjanya mirip dengan sabit (arit/clurit), yaitu diayun dari samping luar menuju samping dalam (Kotot, 2003:75).',
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          Text(
                            'Selanjutnya  dapat disimpulkan bahwa tendangan sabit merupakan tendangan yang dilakukan membentuk lintasan setengah lingkaran (seperti sabit), dengan penyasarnya adalah punggung telapak kaki atau jari bagian luar. Tendangan yang memanfaatkan tungkai kaki dan lecutan dari lutut, sasarannya adalah badan bagian depan, belakang, dan rusuk. Tendangan yang menggunakan satu kaki terkuat sebagai tumpuan, dikarenakan tendangan sabit membutuhkan keseimbangan dan kecepatan yang baik, selain itu tendangan ini mudah untuk ditebak dan ditangkap oleh lawan.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'c.	Tendangan T',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 3),
                          Text(
                            'Tendangan “T” merupakan teknik istimewa, karena sifatnya yang menusuk serta posisi tubuh menyamping, maka daya benturnya menjadi sangat kuat dan juga sulit ditangkap lawan (Kotot, 2003:76). Serangan yang menggunakan sebelah kaki dan tungkai, lintasannya lurus ke depan dan perkenaannya pada tumit, telapak kaki dan sisi luar telapak kaki, posisi lurus, biasanya digunakan untuk serangan samping, dengan sasaran seluruh bagian tubuh (Lubis, 2004:28).',
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          Text(
                            'Menurut Sucipto (2007: 79) “Tendangan samping, yaitu dengan sisi telapak kaki”. Menurut Hendro Wardoyo (2014: 39) “tendangan sabit adalah tendangan yang lintasannya setengah lingkaran kedalam, dengan sasaran seluruh bagian tubuh, dengan punggung telapak kaki atau jari telapak kaki”.',
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
                            'Berdasarkan penjelasan di atas dapat ditarik kesimpulan bahwa tendangan “T” merupakan tedangan yang lintasannya lurus, badan menghadap ke depan (seperti huruf “T”), penyasar seluruh telapak kaki, dan sasaran seluruh bagian tubuh. Teknik tendangan ini sangat bagus dilakukan selain menyerang juga bisa digunakan untuk bertahan. Peraturan pertandingan tendangan “T” dapat dilakukan dengan cara mengangkat satu kaki (lutut) setinggi sasaran, kemudian putar kaki ke arah luar dengan pinggul ikut berputar, selanjutnya dorongkan tungkai atau kaki dengan melecutkan ke samping, dan bersamaan putar pinggul dan bahu ke dalam',
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
                                          VideoTendanganUtama())),
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
  // ],
  // );
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
