import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:quiz_app/dataOption.dart';
import 'package:quiz_app/models/options.dart';
import 'package:quiz_app/myWidgets/MyButton.dart';
import 'package:quiz_app/myWidgets/MyPaddingButtonOption.dart';
import 'package:quiz_app/myWidgets/constantes.dart';

import '../dataQuestions.dart';
import '../models/question.dart';

class QuestionPage extends StatefulWidget {
  var indexReponseQuestion = 0;
  DataQuestion dataQuestion = DataQuestion();
  DataOption dataOption = DataOption();
  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  var buttonSubmitClicked = false;
  var indexQuestion = 1;

  var questionList;
  List<OptionModel> optionList = [];

  @override
  void initState() {
    questionList = widget.dataQuestion.getQuestions();
    optionList = widget.dataOption.getOptions();
    // TODO: implement initState
    super.initState();
  }

  // List<QuestionModel> questionList = [];

  @override
  Widget build(BuildContext context) {
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
              "${questionList[indexQuestion - 1].question}",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(15),
              child:
                  Image.asset("${questionList[indexQuestion - 1].imageURL}")),
          Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: FAProgressBar(
                      currentValue: indexQuestion,
                      maxValue: questionList.length,
                    ),
                  ),
                  Text('${indexQuestion}/' + '${questionList.length}')
                ],
              )),
          GestureDetector(
            onTap: () {
              setState(() {
                optionList[0].isOptionSelected = true;
                setToDefault(0);
              });
            },
            child: MyPaddingButtonOption(
              colourOption: setColourOption(0),
              questionOption: questionList[indexQuestion - 1].optionOne,
              fontWeight: setFontWeight(0),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                optionList[1].isOptionSelected = true;
                setToDefault(1);
              });
            },
            child: MyPaddingButtonOption(
              fontWeight: setFontWeight(1),
              colourOption: setColourOption(1),
              questionOption: questionList[indexQuestion - 1].optionTwo,
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                optionList[2].isOptionSelected = true;
                setToDefault(2);
              });
            },
            child: MyPaddingButtonOption(
              colourOption: setColourOption(2),
              questionOption: questionList[indexQuestion - 1].optionThree,
              fontWeight: setFontWeight(2),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                optionList[3].isOptionSelected = true;
                setToDefault(3);
              });
            },
            child: MyPaddingButtonOption(
              fontWeight: setFontWeight(3),
              colourOption: setColourOption(3),
              questionOption: questionList[indexQuestion - 1].optionFour,
            ),
          ),
          MyButton(
              texte: 'Soumettre',
              texteColor: Colors.white,
              couleurButton: Colors.blue,
              size: 200,
              onPressed: () {
                setState(() {
                  buttonSubmitClicked = true;

                  //setToDefault();
                });
              },
              borderRadius: 10,
              borderSideColor: Colors.red)
        ],
      ),
    );
  }

  FontWeight setFontWeight(int i) {
    return (optionList[i].isOptionSelected)
        ? cFontweightBold
        : cFontweightNormal;
  }

  Color setColourOption(int i) {
    if (buttonSubmitClicked && optionList[i].isOptionSelected) {
      return (i + 1 == questionList[indexQuestion - 1].CorrectAnswer)
          ? Colors.green
          : Colors.red;
    } else {
      return Colors.white;
    }
  }

  void setToDefault(int i) {
    setState(() {
      for (var option in optionList) {
        if (option.optionNumber - 1 != i) {
          option.isOptionSelected = false;
          buttonSubmitClicked = false;
        }
      }
    });
  }
}
