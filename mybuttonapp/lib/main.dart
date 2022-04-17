import 'package:flutter/material.dart';
// import 'package:mybuttonapp/result.dart';

import './quiz.dart';
import './result.dart';
// import './question.dart';
// import './answer.dart';
// import 'dart:ui';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  //StatelessWidget{
  @override
  State <StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }

}
class _MyAppState extends State <MyApp> {

   final _questions = const [
    {
      'questionText': 'what\'s your favorite color?',
       'answer': [
     {'text': 'black', 'score': 10},
     {'text': 'blue', 'score': 5},
     {'text': 'red', 'score': 3},
     {'text': 'pink', 'score': 1},
     ],
    },
    {
      'questionText': 'what\'s your favorite animal?',
       'answer': [
     {'text': 'cow', 'score': 12},
     {'text': 'elephant', 'score': 2},
     {'text': 'horse', 'score': 7},
     {'text': 'tiger' ,'score': 10},
     ],
    },
    {
      'questionText': 'what\'s your favorite inspector?',
       'answer': [
      {'text': 'Max', 'score': 4 },
       {'text': 'ram', 'score': 9 },
        {'text': 'nima', 'score': 2 },
         {'text': 'Maxia', 'score': 10},
      ],
    },

  ];

   var _questionIndex = 0;
   var _totalScore = 0;

   void _resetQuiz() {
     setState(() {
       _questionIndex = 0;
       _totalScore = 0;
     });
   }
   void _answerQuestion(int score) {
     // var aBool = true;
     // aBool = false;

     _totalScore += score;

     setState(() {
       _questionIndex = _questionIndex + 1;
     });
     print(_questionIndex);
     if (_questionIndex < _questions.length) {
       print('We have more questions!');
     } else {
       print('No more questions!');
     }
   }

  @override
  Widget build(BuildContext context){
    //  final  questions = const [
    //     {
    //       'questionText': 'what\'s your favorite color', 'answer': [
    //       'black','red','green','white'],
    //     },
    //     {
    //       'questionText': 'what\'s your favorite animal', 'answer': [
    //       'cow','rabbit','elephant','ass'],
    //     },
    //     {
    //       'questionText': 'what\'s your favorite inspector', 'answer': [
    //       'Max','Max','Max','Max'],
    //     },


    // 'what\'s your favorite color',
    //     'what\'s your favorite animal',



    // var dummy=['hello'];
    // dummy.add("max");
    // print(dummy);

    //questions=[]; //does not work if questionsis a const

    // return MaterialApp(
    //   home: Scaffold(
    //     appBar: AppBar(
    //       title: Text('My Quiz app'),
    //     ),
    //     body: _questionIndex < _questions.length
    //          ? Quiz(
    //       answerQuestion: _answerQuestion,
    //       questionIndex: _questionIndex,
    //       questions: _questions,
          //    ) //Column(
        //   // children:[
          //   // Text('The question! '),
          //   Question(
          //     questions[_questionIndex]['questionText'] as String,
          //     //  question[0]//.elementAt(0)
          //   ),
          //   ...(questions[_questionIndex]['answer'] as List<String>)
          //       .map((answer){
          //     return Answer(_answerQuestion, answer);
          //   }).toList()

            //Answer(_answerQuestion),
            // RaisedButton(
            //   child: Text('Answer 2'),
            //   //  => anonymous function call
            //   onPressed: () => print('Answer 2 chosen! '),
            // ),
            // Answer(_answerQuestion),
            // RaisedButton(
            //   child: Text('Answer 3'),
            //   onPressed: (){
            //     //....
            //     print('Answer 3 chosen ! ');
            //   },
            // )
            // Answer(_answerQuestion),
         // ],
       // )

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
          answerQuestion: _answerQuestion,
          questionIndex: _questionIndex,
          questions: _questions,
        )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
