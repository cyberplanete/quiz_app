import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/dataQuestions.dart';

import '../models/question.dart';

const Color cColorOptionDefault = Colors.white;
const Color cColorOptionCorrect = Colors.green;
const Color cColorOptionWrong = Colors.red;
const FontWeight cFontweightNormal = FontWeight.normal;
const FontWeight cFontweightBold = FontWeight.bold;
const String cButtonSubmit = 'Soumettre';
const String cButtonNextQuestion = 'Question suivante';
const Text cOptionMustBeSelected =
    Text('Veuillez choisir une réponse continuer !');

List<QuestionModel> cQuestionList = DataQuestion().getQuestions();
