import 'package:flutter/material.dart';
import 'package:quiz_app/myWidgets/MyButton.dart';
import 'package:quiz_app/myWidgets/MyPaddingButtonOption.dart';

import '../dataQuestions.dart';
import '../question.dart';

class QuestionPage extends StatefulWidget {
  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  @override
  Widget build(BuildContext context) {
    var indexQuestion = 1;
    List<QuestionModel> questionList = [];
    var indexReponseQuestion = 0;
    DataQuestion dataQuestion = DataQuestion();
    questionList = dataQuestion.getQuestions();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('test'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(15),
            child: Text(
              "${questionList[0].question}",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(15),
              child: Image.asset("${questionList[0].imageURL}")),
          MyPaddingButtonOption(
            questionOption: questionList[0].optionOne,
          ),
          MyPaddingButtonOption(
            questionOption: questionList[0].optionTwo,
          ),
          MyPaddingButtonOption(
            questionOption: questionList[0].optionThree,
          ),
          MyPaddingButtonOption(
            questionOption: questionList[0].optionFour,
          ),
          MyButton(
              texte: 'Soumettre',
              texteColor: Colors.white,
              couleurButton: Colors.blue,
              size: 200,
              onPressed: () {},
              borderRadius: 10,
              borderSideColor: Colors.red)
        ],
      ),
    );
  }
}
