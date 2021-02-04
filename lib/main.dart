import 'package:flutter/material.dart';
import 'dart:math';

main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple,
        body: HomePage(),
      ),
    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int rightDiceNumber = 1;
  int leftDiceNumber = 1;

  void rollBothDice() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              stops: [0.1, 0.3, 0.6, 0.8, 1.0],
              colors: [
                Colors.purple[600],
                Colors.purple[300],
                Colors.purple[400],
                Colors.purple[200],
                Colors.purple[600],
               
              ],
            ),
          ),
          child: Column(
            children: <Widget>[
              Text(
                'Press to Roll A Dice',
                style: TextStyle(
                    fontFamily: 'Architects Daughter',
                    fontSize: 30,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(height:170,),
              Center(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: FlatButton(
                        onPressed: () {
                          setState(
                                () {
                              rollBothDice();
                            },
                          );
                        },
                        child:Image(image:AssetImage('assets/dice$leftDiceNumber.png'),),
                      ),
                    ),
                    Expanded(
                      child: FlatButton(
                        onPressed: () {
                          setState(
                                () {
                              rollBothDice();
                            },
                          );
                        },
                        child: Image(image:AssetImage('assets/dice$rightDiceNumber.png'),),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}