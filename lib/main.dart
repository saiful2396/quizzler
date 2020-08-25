import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuizScreen(),
    );
  }
}

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 10,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Text('This the question place that we are place here?',
                  style: TextStyle(color: Colors.white, fontSize: 20),),
                ),
              ),
            ),
            Spacer(),
            Container(
              color: Colors.green,
              child: FlatButton(onPressed:()=>null,
                  child: Text('True',style: TextStyle(color: Colors.white),)),
            ),
            SizedBox(height: 20,),
            Container(
              color: Colors.red,
              child: FlatButton(
                  onPressed: ()=> null,
                  child: Text('False',style: TextStyle(color: Colors.white),)),
            ),
            SizedBox(height: 50,)
          ],
        ),
      ),
    );
  }
}
