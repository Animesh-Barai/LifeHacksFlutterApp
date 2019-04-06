import 'package:flutter/material.dart';
import 'cards.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
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
    return new Center(
      child: new Container(
        padding: const EdgeInsets.all(16.0),
        child: new Cards(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Center(
          child: new Image.asset("assets/logo.png"),
        ),
        backgroundColor: Colors.blue,
      ),
      body: _buildCardStack(),
      bottomNavigationBar: new Container(
        height: MediaQuery.of(context).size.height/17.5,
        child: new BottomAppBar(
          color: Colors.white,
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new Text("2019 \u00a9 Siddharth Notani")
            ],
          ),
        ),
      ),
    );
  }
}

