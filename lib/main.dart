import 'package:flutter/material.dart';
import 'package:fluttery/layout.dart';
import 'cards.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Widget _buildCardStack(){
    return new AnchoredOverlay(
      showOverlay: true,
      child: new Center(),
      overlayBuilder: (BuildContext context, Rect anchorBounds, Offset anchor){
        return CenterAbout(
          position: anchor,
          child: new Container(
            width: anchorBounds.width,
            height: anchorBounds.height,
            padding: const EdgeInsets.all(16.0),
            child: new Cards(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Image.asset("assets/logo.png"),
        backgroundColor: Colors.transparent,
      ),
      body: _buildCardStack(),
      bottomNavigationBar: new Text("Siddharth Notani"),
    );
  }
}
