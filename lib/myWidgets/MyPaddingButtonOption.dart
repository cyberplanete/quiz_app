import 'package:flutter/material.dart';

import 'constantes.dart';

class MyPaddingButtonOption extends StatefulWidget {
  //final GlobalKey key;
  final String questionOption;
  Color colourOption = cColorOptionDefault;
  FontWeight? fontWeight = FontWeight.normal;
  MyPaddingButtonOption(
      {required this.colourOption,
      required this.questionOption,
      required this.fontWeight,
      Key? key})
      : super(key: key);

  setFont(FontWeight fontWeight) {
    fontWeight = fontWeight;
  }

  @override
  _MyPaddingButtonOptionState createState() => _MyPaddingButtonOptionState();
}

class _MyPaddingButtonOptionState extends State<MyPaddingButtonOption> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width - 15,
              height: 40,
              color: widget.colourOption,
              child: Text(
                '${widget.questionOption}',
                style: TextStyle(fontWeight: widget.fontWeight),
              ),
            )
          ],
        ));
  }
}
