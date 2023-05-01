import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Resume App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: XylophonePage(),
    );
  }
}
class XylophonePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('XyloPhone App',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),),
      ),
      body: ListView(

        children: [Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(height: 60,
                child: InkWell(
                  onTap: ()  {
                    final assetsAudioPlayer = AssetsAudioPlayer();

                    assetsAudioPlayer.open(
                      Audio("assets/audio/xylo1.mp3"),
                    );
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(borderRadius:
                    BorderRadius.circular(25),color: Colors.orange,),
                  ),
                ),),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(height: 60,
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(borderRadius:
                  BorderRadius.circular(25),color: Colors.green),
                ),),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(height: 60,
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(borderRadius:
                  BorderRadius.circular(25),color: Colors.pink),
                ),),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(height: 60,
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(borderRadius:
                  BorderRadius.circular(25),color: Colors.blueGrey),
                ),),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(height: 60,
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(borderRadius:
                  BorderRadius.circular(25),color: Colors.blue),
                ),),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(height: 60,
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(borderRadius:
                  BorderRadius.circular(25),color: Colors.teal),
                ),),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(height: 60,
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(borderRadius:
                  BorderRadius.circular(25),color: Colors.red),
                ),),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(height: 60,
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(borderRadius:
                  BorderRadius.circular(25),color: Colors.deepPurpleAccent),
                ),),
            ),






          ],
        ),]
      ),
    );
  }
}
