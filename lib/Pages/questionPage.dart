import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:quiz_app/dataOption.dart';
import 'package:quiz_app/models/options.dart';
import 'package:quiz_app/models/utilisateur.dart';
import 'package:quiz_app/myWidgets/MyButton.dart';
import 'package:quiz_app/myWidgets/MyPaddingButtonOption.dart';
import 'package:quiz_app/myWidgets/constantes.dart';
import 'package:quiz_app/myWidgets/score_popup_dialog.dart';

import '../dataQuestions.dart';
import '../models/question.dart';

class QuestionPage extends StatefulWidget {
  Utilisateur utilisateur;
  QuestionPage({required this.utilisateur});

  var indexReponseQuestion = 0;
  DataQuestion dataQuestion = DataQuestion();
  DataOption dataOption = DataOption();

  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  var buttonSubmitClicked = false;
  var indexQuestion = 1;
  var score;
  var buttonSubmitText = 'Soumettre';
  List<QuestionModel> questionList = [];
  List<OptionModel> optionList = [];

  @override
  void initState() {
    questionList = widget.dataQuestion.getQuestions();
    optionList = widget.dataOption.getOptions();
    score = widget.utilisateur.score = 0;

    super.initState();
  }

  // List<QuestionModel> questionList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Quizz'),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                  if (buttonSubmitText != cButtonNextQuestion) {
                    optionList[0].isOptionSelected = true;
                    setFontToNormal(0);
                  }
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
                  if (buttonSubmitText != cButtonNextQuestion) {
                    optionList[1].isOptionSelected = true;
                    setFontToNormal(1);
                  }
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
                  if (buttonSubmitText != cButtonNextQuestion) {
                    optionList[2].isOptionSelected = true;
                    setFontToNormal(2);
                  }
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
                  if (buttonSubmitText != cButtonNextQuestion) {
                    optionList[3].isOptionSelected = true;
                    setFontToNormal(3);
                  }
                });
              },
              child: MyPaddingButtonOption(
                fontWeight: setFontWeight(3),
                colourOption: setColourOption(3),
                questionOption: questionList[indexQuestion - 1].optionFour,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: MyButton(
                  texte: '${buttonSubmitText}',
                  texteColor: Colors.white,
                  couleurButton: Colors.blue,
                  size: 200,
                  onPressed: () {
                    setState(() {
                      buttonSubmitClicked = true;

                      nextQuestion();
                      if (isOptionSelected()) {
                        buttonSubmitText = buttonSubmitClicked
                            ? cButtonNextQuestion
                            : cButtonSubmit;
                      }
                    });
                  },
                  borderRadius: 10,
                  borderSideColor: Colors.red),
            ),
          ],
        ),
      ),
    );
  }

  /// Retourne une fontWeight si bouton clické ou pas
  FontWeight setFontWeight(int i) {
    return (optionList[i].isOptionSelected)
        ? cFontweightBold
        : cFontweightNormal;
  }

  ///La couleur de l'option est definie si la reponse est correcte ou fausse et si le bouton soummettre est clické
  Color setColourOption(int i) {
    Color couleurOption;
    if (buttonSubmitClicked && optionList[i].isOptionSelected) {
      if (i + 1 == questionList[indexQuestion - 1].CorrectAnswer) {
        couleurOption = Colors.green;
        widget.utilisateur.score = score++;
      } else {
        couleurOption = Colors.red;
      }
    } else {
      couleurOption = Colors.white;
    }
    return couleurOption;
  }

  /// reinitialise le fontWeight à normal pour les autres options non choisie
  void setFontToNormal(int i) {
    setState(() {
      for (var option in optionList) {
        if (option.optionNumber - 1 != i) {
          option.isOptionSelected = false;
          buttonSubmitClicked = false;
        }
      }
    });
  }

  ///Passage à la question suivante
  void nextQuestion() {
    if (buttonSubmitText == cButtonNextQuestion) {
      setState(() {
        if (indexQuestion == questionList.length) {
          //_showToast(context);
          print('test terminée');

          showDialog(
            context: context,
            builder: (BuildContext context) => ScorePopupDialog(
              context: context,
              utilisateur: widget.utilisateur,
              score: score,
            ),
          );
          indexQuestion = 1;
          setPageToDefault();
        } else {
          indexQuestion++;
          setPageToDefault();
        }
      });
    }
  }

  /// Reintialiser toutes les valeurs des options à la page suivante
  void setPageToDefault() {
    setState(() {
      for (var option in optionList) {
        option.isOptionSelected = false;
        buttonSubmitClicked = false;
        buttonSubmitText = cButtonSubmit;
      }
    });
  }

  /// Empecher l'affichage du toast à chaque nouvelle page et l'afficher si aucune option n'a été choisie
  bool isOptionSelected() {
    var optionSelected = false;
    for (var option in optionList) {
      if (option.isOptionSelected) {
        optionSelected = true;
      }
    }

    if (!optionSelected && buttonSubmitClicked) {
      _showToast(context);
    }
    return optionSelected;
  }

  /// Afficher un toast si aucune option est choisie
  void _showToast(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(SnackBar(
      content: cOptionMustBeSelected,
      duration: Duration(milliseconds: 1000),
    ));
  }
}
