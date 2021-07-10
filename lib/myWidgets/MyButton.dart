import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String texte;
  final Color texteColor;
  final Color couleurButton;
  final double size;
  final VoidCallback onPressed;
  final double borderRadius;
  final Color borderSideColor;
  const MyButton({
    required this.texte,
    required this.texteColor,
    required this.couleurButton,
    required this.size,
    required this.onPressed,
    required this.borderRadius,
    required this.borderSideColor,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      child: TextButton(
        onPressed: () {
          onPressed();
        },
        child: Text(
          texte,
          style: TextStyle(color: texteColor),
        ),
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius),
                    side: BorderSide(color: borderSideColor))),
            textStyle: MaterialStateProperty.all<TextStyle>(
                TextStyle(color: Colors.white, fontSize: 20)),
            backgroundColor: MaterialStateProperty.all<Color>(couleurButton)),
      ),
    );
  }
}
