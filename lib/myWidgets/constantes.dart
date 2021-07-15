import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/dataQuestions.dart';

import '../models/question.dart';

const Color cColorOptionDefault = Colors.white;
const Color cColorOptionCorrect = Colors.green;
const Color cColorOptionWrong = Colors.red;
const FontWeight cFontweightNormal = FontWeight.normal;
const FontWeight cFontweightBold = FontWeight.bold;
List<QuestionModel> cQuestionList = DataQuestion().getQuestions();
