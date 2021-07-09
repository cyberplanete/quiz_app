import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:quiz_app/myWidgets/MyTextField.dart';

class LoginPage extends StatelessWidget {
  TextEditingController textEditingControllerNom = TextEditingController();
  TextEditingController textEditingControllerPrenom = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/ic_bg.png"), fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'QuizApp',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              Container(
                width: MediaQuery.of(context).size.width - 20,
                height: 300,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          'Bienvenue',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          'Veuillez entrer votre nom',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(15),
                        child: MyTextField(
                          textEditingController: textEditingControllerNom,
                          textInputType: TextInputType.name,
                          hintText: 'Votre nom',
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: TextButton(
                          onPressed: null,
                          child: Text('Soumettre'),
                          style: ButtonStyle(
                              textStyle: MaterialStateProperty.all<TextStyle>(
                                  TextStyle(color: Colors.white, fontSize: 20)),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.pink)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
