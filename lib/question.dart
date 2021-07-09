import 'package:flutter/cupertino.dart';

class QuestionModel {
  int id;
  String question;
  AssetImage image;
  String optionOne;
  String optionTwo;
  String optionThree;
  String optionFour;
  int CorrectAnswer;

  QuestionModel(
      {required this.id,
      required this.question,
      required this.image,
      required this.optionOne,
      required this.optionTwo,
      required this.optionThree,
      required this.optionFour,
      required this.CorrectAnswer});
}
