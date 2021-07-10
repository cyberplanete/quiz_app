import 'package:flutter/cupertino.dart';

class QuestionModel {
  int id;
  String question;
  String imageURL;
  String optionOne;
  String optionTwo;
  String optionThree;
  String optionFour;
  int CorrectAnswer;

  QuestionModel(
      {required this.id,
      required this.question,
      required this.imageURL,
      required this.optionOne,
      required this.optionTwo,
      required this.optionThree,
      required this.optionFour,
      required this.CorrectAnswer});
}
