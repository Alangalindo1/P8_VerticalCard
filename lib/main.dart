import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> titles = [
    "Tierra",
    "SATURNO",
    "MARTE",
    "JUPITER",
    "VENUS",
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> images = [
      Container(
        child: Column(
          children: const <Widget>[
            Image(
              fit: BoxFit.contain,
              height: 100,
              image: NetworkImage(
                  "https://raw.githubusercontent.com/Alangalindo1/p6carruselgalindo/main/platenas/tierra.jpg"),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
      ),
      Container(
        child: Column(
          children: const <Widget>[
            Image(
              fit: BoxFit.contain,
              height: 100,
              image: NetworkImage(
                  "https://raw.githubusercontent.com/Alangalindo1/p6carruselgalindo/main/platenas/saturno.jpg"),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
      ),
      Container(
        child: Column(
          children: const <Widget>[
            Image(
              fit: BoxFit.contain,
              height: 100,
              image: NetworkImage(
                  "https://raw.githubusercontent.com/Alangalindo1/p6carruselgalindo/main/platenas/marte.jpg"),
            ),
          ],
        ),
        decoration: const BoxDecoration(
          color: Colors.cyan,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      Container(
        child: const Column(
          children: <Widget>[
            Image(
              fit: BoxFit.contain,
              height: 100,
              image: NetworkImage(
                  "https://raw.githubusercontent.com/Alangalindo1/p6carruselgalindo/main/platenas/jupiter.jpg"),
            ),
          ],
        ),
        decoration: const BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      Container(
        child: Column(
          children: const <Widget>[
            Image(
              fit: BoxFit.contain,
              height: 100,
              image: NetworkImage(
                  "https://raw.githubusercontent.com/Alangalindo1/p6carruselgalindo/main/platenas/Venus.jpg"),
            ),
          ],
        ),
        decoration: const BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Card vertical Galindo',
          style: TextStyle(
              color: Color(0xff000000), backgroundColor: Colors.lightGreen),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Expanded(
          child: Container(
            child: VerticalCardPager(
              textStyle: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
              titles: titles,
              images: images,
              onPageChanged: (page) {},
              align: ALIGN.CENTER,
              onSelectedItem: (index) {},
            ),
          ),
        ),
      ),
    );
  }
}
