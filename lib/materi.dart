import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:percent_indicator/linear_percent_indicator.dart';
import 'dart:math' as math;

Color _color = Colors.black;

class Article extends StatefulWidget {
  static const routeName = '/FoodArticle';
  @override
  _FoodArticleState createState() => _FoodArticleState();
}

class _FoodArticleState extends State<Article> {
  final controller = ScrollController();
  double appBarHeight = 200.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
      ),
      body: CustomScrollView(
        controller: controller,
        slivers: <Widget>[
          //=================
          //  Section Top
          //=================
          SliverAppBar(
            backgroundColor: Colors.white,
            pinned: true,
            expandedHeight: appBarHeight,
            floating: true,
            automaticallyImplyLeading: false,
            flexibleSpace: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                double percent = ((constraints.maxHeight - kToolbarHeight) *
                    100 /
                    (appBarHeight - kToolbarHeight));
                return Stack(
                  children: <Widget>[
                    //==================
                    //  Image
                    //==================
                    Image.asset(
                      "assets/images/images.png",
                      fit: BoxFit.scaleDown,
                      height: double.infinity,
                      width: double.infinity,
                    ),

                    Container(
                      height: kToolbarHeight,
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CustomPaint(
                                size: Size.fromHeight(kToolbarHeight),
                                painter: CircleWhite(100 - percent),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //=================================
                    //  Text and Icon
                    //=================================
                    Container(
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Materi Silatpedia",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Spacer(),
                            GestureDetector(
                              onTap: () {
                                controller.animateTo(-appBarHeight,
                                    duration: Duration(seconds: 4),
                                    curve: Curves.fastOutSlowIn);
                              },
                              child: Container(
                                padding: const EdgeInsets.all(8.0),
                                margin: EdgeInsets.only(left: 12, right: 12),
                                child: Icon(
                                  Icons.accessibility,
                                  color: _color,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),

          //=================
          //  Section Bottom
          //=================
          SliverList(
              delegate: SliverChildListDelegate(<Widget>[
            AnnotatedRegion<SystemUiOverlayStyle>(
              value: SystemUiOverlayStyle.dark,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.1, 0.4, 0.7, 0.9],
                    colors: [
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white,
                    ],
                  ),
                ),
                margin: const EdgeInsets.only(
                    top: 20, bottom: 20, left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 35),

                    //=============
                    //   title
                    //=============
                    Wrap(
                      children: <Widget>[
                        Text('PENCAK SILAT',
                            style: TextStyle(
                                fontSize: 26,
                                color: _color,
                                fontWeight: FontWeight.bold))
                      ],
                    ),

                    SizedBox(height: 20),
                    //=============
                    //   Subtitle
                    //=============
                    Text(
                      'Pencak silat atau silat merupakan seni olahraga beladiri yang berasal Asia Tenggara (Indonesia, Brunei Darusaalam, Singapura, Filipina, Thailand). “Silat” adalah istilah yang dikenal secara luas di kawasan Asia Tenggara untuk menyebut seni bela diri ini. Meskipun masing-masing Negara tersebut juga memiliki penyebutan sesuai bahasa lokal mereka seperti gayong dan cekak (Malaysia dan Singapura), bersilat (Thailand), dan pasilat (Filipina).',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 16.0),
                    ),

                    SizedBox(height: 20),

                    SizedBox(height: 20),
                    //=============
                    //   Subtitle 2
                    //=============
                    Text(
                      'Di Indonesia, nama pencak silat digunakan sejak 1948 untuk mempersatukan berbagai aliran seni bela diri tradisional yang ada di Indonesia. Awalnya pencak merupakan nama yang digunakan di Jawa, sedangkan silat digunakan di Sumatera, Semenanjung Malaya dan Kalimantan. Namun seiring berjalannya waktu, istilah pencak digunakan pada atraksi yang lebih mengedepankan unsur seni dan keindahan gerakan. Sedangkan istilah silat digunakan untuk atraksi yang mengedepankan unsur pertarungan',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 16.0),
                    ),

                    SizedBox(height: 20),

                    SizedBox(height: 20),
                    //=============
                    //   Subtitle 3
                    //=============
                    Text(
                      'Dalam Kamus Bahasa Indonesia, Pencak Silat merupakan permainan (keahlian) dalam mempertahankan diri dengan kepandaian menangkis, menyerang, dan membelai diri. ',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 16.0),
                    ),

                    SizedBox(height: 20),
                    //=============
                    //   title 1
                    //=============

                    _buildTitle('Asal usul Silat di Indonesia'),

                    SizedBox(height: 20),
                    //====================
                    //   Description 1
                    //====================
                    Text(
                      'Mengenai asal usul pencak silat di Indonesia, sampai saat ini belum ada yang dapat memastikan kapan dan bagaimana asal muasal pencak silat ini. Ada yang menyebut adanya bela diri ini karena kemampuan para nenek moyang untuk melindungi dan mempertahankan kehidupannya dari tantangan alam. Mereka menciptakan berbagai jurus dengan menirukan berbagai gerakan binatang seperti kera, harimau, ular dan burung elang.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 16.0),
                    ),

                    SizedBox(height: 10),

                    //====================
                    //   Description 2
                    //====================
                    Text(
                      'Selain itu, adapula yang menyebut asal usul seni bela diri karena keterampilan berbagai suku di Indonesia dalam berburu dan berperang dengan menggunakan berbagai senjata seperti parang, tombak dan perisai. Misalnya suku Nias yang terampil menggunakan parang. Adat dan tradisi suku Nias dipercaya hingga abad ke-20 tidak tersentuk budaya luar sama sekali',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 16.0),
                    ),

                    // images
                    Center(
                      child: Image(
                        image:
                            AssetImage('assets/images/IMG-20201129-WA0067.jpg'),
                        height: 400.0,
                        width: 400.0,
                        fit: BoxFit.contain,
                      ),
                    ),

                    SizedBox(height: 20),
                    //=============
                    //   title 2
                    //=============

                    _buildTitle('Teknik Dasar'),

                    SizedBox(height: 20),

                    Text(
                      '1. Kuda – kuda',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Text(
                      '2. Sikap Pasang',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Text(
                      '3. Gerak Langkah',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Text(
                      '4. Jurus',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 16.0),
                    ),

                    SizedBox(height: 20),
                    //=============
                    //   title 3
                    //=============

                    _buildTitle('Teknik Serang'),

                    SizedBox(height: 20),

                    //====================
                    //   Description 4
                    //====================
                    Text(
                      '1. Pukulan',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Text(
                      '2. Tendangan',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Text(
                      '3. Tangkisan',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Text(
                      '4. Bantingan',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 16.0),
                    ),

                    SizedBox(height: 20),
                    //=============
                    //   title 3
                    //=============

                    _buildTitle('Tingkatan dalam Pencak Silat'),

                    SizedBox(height: 20),

                    //====================
                    //   Description 4
                    //====================
                    Text(
                      '1. Pemula		: mempelajari semua tahap dasar',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Text(
                      '2. Menengah	: difokuskan pada semua gerakan dasar, pemahaman, variasi, dan bakat pesilat mulai terlihat.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Text(
                      '3. Pelatih	: hasil dari kemampuan yang matang berdasarkan pengalaman di tahap pemula dan menengah',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Text(
                      '4. Pendekar	: pesilat yang telah diakui oleh para sesepuh perguruan, mereka akan mewarisi ilmu-ilmu rahasia tingkat tinggi.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 16.0),
                    ),

                    SizedBox(height: 20),
                  ],
                ),
              ),
            )
          ]))
        ],
      ),
    );
  }

  _buildTitle(String text) {
    return Wrap(
      children: <Widget>[
        Text('$text',
            style: TextStyle(
                color: _color,
                fontStyle: FontStyle.italic,
                fontSize: 20,
                fontWeight: FontWeight.bold))
      ],
    );
  }

  //_buildDescription(String text) {
  //return Wrap(
  //children: <Widget>[
  //Text('$text', style: TextStyle(color: _color, fontSize: 16))
  //],
  //);
  //}
}

class CircleWhite extends CustomPainter {
  double overallPercent;

  CircleWhite(this.overallPercent);

  @override
  void paint(Canvas canvas, Size size) {
    double circleSize = 25.0;
    double angle = math.pi / 180.0 * ((overallPercent * 360 / 100));
    double line = overallPercent * (size.width - circleSize) / 100;
    final paint = Paint()
      ..color = _color
      ..strokeWidth = 3.0
      ..style = PaintingStyle.stroke;
    final path = Path();
    if (overallPercent < 50) {
      path.addPolygon([
        Offset(0.0, size.height),
        Offset((line * 2), size.height),
      ], false);
    }
    if (overallPercent > 50) {
      path.arcTo(
          Rect.fromLTWH(
              size.width - (circleSize * 2), 0.0, circleSize * 2, size.height),
          math.pi / 2,
          -angle * 2,
          false);
      if (overallPercent < 100) {
        path.addPolygon([
          Offset(overallPercent * (size.width - circleSize) / 100, size.height),
          Offset(size.width - circleSize, size.height),
        ], false);
      }
      if (overallPercent == 100) {
        path.addArc(
            Rect.fromLTWH(size.width - (circleSize * 2), 0.0, circleSize * 2,
                size.height),
            math.pi / 2,
            math.pi * 2);
      }
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
