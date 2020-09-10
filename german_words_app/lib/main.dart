import 'package:flutter/material.dart';
import 'screens/bildirim.dart';
import 'screens/uygulama.dart';
import 'dart:math';
import 'models/deWords.dart';
import 'models/trWords.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AlmancaKelimeApp(),
    );
  }
}

class AlmancaKelimeApp extends StatefulWidget {
  @override
  _AlmancaKelimeAppState createState() => _AlmancaKelimeAppState();
}

class _AlmancaKelimeAppState extends State<AlmancaKelimeApp> {
  Random random = new Random();
  int sayi = 0;

  void change() {
    setState(() {
      sayi = random.nextInt(germanWords.length);
      print(turkWords.length);
      print(germanWords.length);
      print(sayi);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Almanca Kelime Getir'),
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
            ),
            ListTile(
              title: Text('Uygulama Hakkında'),
              onTap: () {Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Uygulama()));},
            ),
            ListTile(
              title: Text('Geri Bildirim'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Bildirim()));
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Almanca Kelime Getir"),
        centerTitle: true,
        backgroundColor: Color(0xFF2B2E35),
        shadowColor: Color(0xFF2B2E35),
      ),
      body: SafeArea(
        child: Container(
          color: Color(0xFF2B2E35),
          //margin: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Card(
                child: ListTile(
                  leading: (Image.asset('images/getr.png')),
                  title: Text(
                    "${germanWords[sayi]}",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  subtitle: Text(
                    "${turkWords[sayi]}",
                    style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
                  ),
                ),
              ),
              Divider(
                color: Colors.white,
              ),
              RaisedButton(
                  onPressed: () {
                    change();
                  },
                  child: Text("Kelime Getir"),
                  color: Color(0xFFF2D544)),
            ],
          ),
        ),
      ),
    );
  }
}
