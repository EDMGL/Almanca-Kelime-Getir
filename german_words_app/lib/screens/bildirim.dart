import 'package:flutter/material.dart';
import 'package:german_words_app/screens/uygulama.dart';

void main() => runApp(Bildirim());

class Bildirim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(title: Text("Almanca Kelime Getir"),centerTitle: true,),
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
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Uygulama()));
              },
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
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Text("  İletişim ve Geri Bildirim için ",style: TextStyle(fontSize: 20),)),
              SizedBox(height: 10,),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Center(child: Text("erdemgul999@gmail.com",style: TextStyle(fontSize: 25,fontStyle: FontStyle.italic),)),
                  Center(child: Icon(Icons.mail))
                ],),
              )
            ],
          ),
        ),

      ),
    );
  }
}