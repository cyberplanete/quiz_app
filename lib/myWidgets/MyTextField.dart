import 'package:flutter/material.dart';

class MyTextField extends TextField {
  final TextEditingController textEditingController;
  final TextInputType textInputType;
  final String hintText;
  final bool hidePassword;

  MyTextField(
      {required this.textEditingController,
      required this.textInputType,
      this.hidePassword = false,
      this.hintText = ''})
      : super(
            controller: textEditingController,
            keyboardType: textInputType,
            decoration: InputDecoration(
                hintText: hintText, border: OutlineInputBorder()));
}
