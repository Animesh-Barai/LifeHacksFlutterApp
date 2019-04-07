import 'package:flutter/material.dart';
import 'cards.dart';

void main() => runApp(StudentLifeHacks());

class StudentLifeHacks extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Life Hacks',
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
        title: new Padding(
          padding: const EdgeInsets.only(left: 50.0),
          child: new Text("Student Life Hacks"),
        ),
        leading: Image.asset("assets/logo.png"),
        backgroundColor: Colors.redAccent,
      ),
      body: _buildCardStack(),
      bottomNavigationBar: SafeArea(
        child: new BottomAppBar(
            color: Colors.redAccent,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new Text("Flutter Create 2019", style: TextStyle(color: Colors.white)),
                  new IconButton(
                      icon: Icon(Icons.email),
                      iconSize: MediaQuery.of(context).size.height/23.5,
                      color: Colors.white,
                      onPressed: () => {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  content: Form(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: TextFormField(),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: TextFormField(),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: RaisedButton(
                                            child: Text("Submitß"),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              }),
                      }
                  ),
                  new Text("Siddharth Notani", style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          ),
      ),
    );
  }
}

