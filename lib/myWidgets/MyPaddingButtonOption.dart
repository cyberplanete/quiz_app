import 'package:flutter/material.dart';

import '../question.dart';
import 'MyButton.dart';

class MyPaddingButtonOption extends StatelessWidget {
  const MyPaddingButtonOption({
    Key? key,
    required this.questionOption,
  }) : super(key: key);

  final String questionOption;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: MyButton(
        texteColor: Colors.blue,
        borderSideColor: Colors.blue,
        borderRadius: 0,
        texte: "${questionOption}",
        size: MediaQuery.of(context).size.width - 30,
        onPressed: () {},
        couleurButton: Colors.white,
      ),
    );
  }
}
