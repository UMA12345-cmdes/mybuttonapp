import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhase{
    var resultText;
    if(resultScore <= 8){
      resultText='you are awesome and innocent!';
    }
    else if(resultScore <= 12){
      resultText='pritty likeable';
    }
    else if(resultScore <= 16){
      resultText='you are ... strange?!';
    }
    else{
      resultText='you are so bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child:  Column(
        children: <Widget> [
      Text(
        resultPhase,
       style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
       textAlign: TextAlign.center,
      ),
      FlatButton(
     child: Text(
       'Resett Quiz'
       ),
       
      textColor: Colors.blue,
     onPressed: resetHandler,
         ),

        ],
      ),
      
    );
  }
}
