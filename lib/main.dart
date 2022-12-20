import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const BugunNeYapsam());
}

class BugunNeYapsam extends StatelessWidget {
  const BugunNeYapsam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange[300],
        appBar: AppBar(
          backgroundColor: Colors.orange[500],
          centerTitle: true,
          title: Text(
            "Bugün Ne Yapsam ?",
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
        body: liste(),
      ),
    );
  }
}

class liste extends StatefulWidget {
  const liste({Key? key}) : super(key: key);

  @override
  State<liste> createState() => _listeState();
}

class _listeState extends State<liste> {
  int corbaNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;

  List<String> corbakAdlari = [
    "mercimek",
    "tarhana",
    "tavuksuyu",
    "dugun corbasi",
    "yogurtlu corba"
  ];

  List<String> yemekAdlari = [
    'Karnıyarık',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Izgara Balık'
  ];
  List<String> tatliAdlari = [
    'Kadayıf',
    'Baklava',
    'Sütlaç',
    'Kazandibi',
    'Dondurma'
  ];
  void corbaButonu() {
    setState(() {
      corbaNo = Random().nextInt(5) + 1;
    });
  }

  void yemekButonu() {
    setState(() {
      yemekNo = Random().nextInt(5) + 1;
    });
  }

  void tatliButonu() {
    setState(() {
      tatliNo = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: OutlinedButton(
              onPressed: corbaButonu,
              child: Image.asset(
                "assets/corba_$corbaNo.jpg",
              ),
            ),
          ),
          Expanded(
            child: OutlinedButton(
              onPressed: () {
                print("$corbaNo. corba butonu tiklandi");
              },
              child: Text(
                corbakAdlari[corbaNo - 1],
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Expanded(
            child: OutlinedButton(
              onPressed: () {
                setState(() {
                  yemekNo = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset(
                "assets/yemek_$yemekNo.jpg",
              ),
            ),
          ),
          Expanded(
            child: OutlinedButton(
              onPressed: yemekButonu,
              child: Text(
                yemekAdlari[yemekNo - 1],
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Expanded(
            child: OutlinedButton(
              onPressed: tatliButonu,
              child: Image.asset(
                "assets/tatli_$tatliNo.jpg",
              ),
            ),
          ),
          Expanded(
            child: OutlinedButton(
              onPressed: () {
                print("$tatliNo. tatli butonuna tiklandi");
              },
              child: Text(
                tatliAdlari[tatliNo - 1],
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
