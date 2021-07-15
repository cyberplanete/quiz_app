import 'package:flutter/cupertino.dart';

class OptionModel {
  int optionNumber;
  FontWeight fontWeight;
  String textOption;
  Color optionColor;
  bool isOptionSelected;
  bool isOptionCorrect;

  OptionModel(
      {required this.optionNumber,
      required this.textOption,
      required this.fontWeight,
      required this.optionColor,
      required this.isOptionCorrect,
      required this.isOptionSelected});
}
