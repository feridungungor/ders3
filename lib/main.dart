import 'package:flutter/material.dart';
import 'package:flutter_deneme/burclar/dart/burc.dart';
import 'package:flutter_deneme/burclar_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Burçlar"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: burclarim.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (contex)=>BurclarDetails()
              ));
            },
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(bottom: 10),
                  color: Colors.black,
                  child: Image.asset(
                    burclarim[index].resim,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 283,
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [.5,1],
                      colors: [
                        Colors.black.withOpacity(.1),
                        Colors.black.withOpacity(.8)
                      ]
                    )
                  ),
                ),
                Positioned(
                  bottom: 15,
                  left: 10,
                  child: Row(
                    children: [
                      Text(
                        burclarim[index].burc_adi,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text(
                        burclarim[index].tarih_araligi.toUpperCase().replaceAll("-", " "),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

}
