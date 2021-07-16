import 'package:flutter/material.dart';
import 'package:quiz_app/models/utilisateur.dart';

class ScorePopupDialog extends StatefulWidget {
  final Utilisateur utilisateur;
  final BuildContext context;
  final int score;
  const ScorePopupDialog(
      {required this.context,
      required this.utilisateur,
      required this.score,
      Key? key})
      : super(key: key);

  @override
  _ScorePopupDialogState createState() => _ScorePopupDialogState();
}

class _ScorePopupDialogState extends State<ScorePopupDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Score pour ${widget.utilisateur.nom}'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text('Votre score: ${widget.score}')],
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Fermer'))
      ],
    );
  }
}
