import 'package:flutter/material.dart';

import 'bildirim.dart';

void main() => runApp(Uygulama());

class Uygulama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Almanca Kelime Getir"),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Uygulama Hakkında'),
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             SizedBox(height: 10,),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(" Uygulamanın Amacı",style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,fontSize: 20),),
                    SizedBox(height: 10,),
                  ],
                ),
              ),
               Card(
                child: ListTile(
                  leading: (Image.asset('images/getr.png')),
                  title: Text(
                    "Uygulamın temel amacı otobüste,metroda,evde,okulda kısacası her yerde ve her zamanda internetsiz bir şekilde Almanca kelime öğrenimini kolaylaştırmaktır.Yalnızca tek bir tuşla yaklaşık 6000 kelime görebilirsiniz. ",
                    
                  ),
                  
                ),
              ),
              
              
            ],
          ),
        ),
      ),
    );
  }
}
