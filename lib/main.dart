import 'package:flutter/material.dart';
import 'cards.dart';

void main() => runApp(StudentLifeHacks());

class StudentLifeHacks extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Life Hacks',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
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

  void _helpDialog(){
    showDialog(
        context: context,
        builder: (_) => new AlertDialog(
          title: new Text("Help"),
          content: new Text("Tap on the right side of the picture to see the next one →"
                  "\n\nTap on the left side of the picture to see the previous one ←"
                  "\n\nFor suggestions, email: studentlifehacks@gmail.com"),
        )
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Padding(
          padding: const EdgeInsets.only(left: 55.0),
          child: new Text("Student Life Hacks"),
        ),
        leading: Image.asset("assets/logo.png"),
        backgroundColor: Colors.redAccent,
      ),
      body: _buildCardStack(),
      bottomNavigationBar: new BottomAppBar(
            color: Colors.redAccent,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new Text("Flutter Create 2019", style: TextStyle(color: Colors.white)),
                  new IconButton(
                      icon: Icon(Icons.help),
                      iconSize: MediaQuery.of(context).size.height/23.5,
                      color: Colors.white,
                      onPressed: () => _helpDialog()
                  ),
                  new Text("Siddharth Notani", style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          ),
    );
  }
}