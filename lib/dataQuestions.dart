import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';

class DataQuestion {
  List<QuestionModel> getQuestions() {
    List<QuestionModel> questionsList = [];
    QuestionModel que1 = QuestionModel(
        id: 1,
        question: "Quel est le nom du pays correspondant à ce drapeau ?",
        imageURL: "assets/ic_flag_of_argentina.png",
        optionOne: "Argentine",
        optionTwo: "Belgique",
        optionThree: "Roumanie",
        optionFour: "Italie",
        CorrectAnswer: 1);
    questionsList.add(que1);

    QuestionModel que2 = QuestionModel(
        id: 2,
        question: "Quel est le nom du pays correspondant à ce drapeau ?",
        imageURL: "assets/ic_flag_of_australia.png",
        optionOne: "Bresil",
        optionTwo: "Angleterre",
        optionThree: "Australie",
        optionFour: "Italie",
        CorrectAnswer: 3);
    questionsList.add(que2);

    QuestionModel que3 = QuestionModel(
        id: 3,
        question: "Quel est le nom du pays correspondant à ce drapeau ?",
        imageURL: "assets/ic_flag_of_belgium.png",
        optionOne: "Afrique du sud",
        optionTwo: "Belgique",
        optionThree: "Roumanie",
        optionFour: "Maroc",
        CorrectAnswer: 2);
    questionsList.add(que3);

    QuestionModel que4 = QuestionModel(
        id: 4,
        question: "Quel est le nom du pays correspondant à ce drapeau ?",
        imageURL: "assets/ic_flag_of_brazil.png",
        optionOne: "Argentine",
        optionTwo: "Cuba",
        optionThree: "Canada",
        optionFour: "Brésil",
        CorrectAnswer: 4);
    questionsList.add(que4);

    QuestionModel que5 = QuestionModel(
        id: 5,
        question: "Quel est le nom du pays correspondant à ce drapeau ?",
        imageURL: "assets/ic_flag_of_germany.png",
        optionOne: "Mexique",
        optionTwo: "Malaisie",
        optionThree: "Allemagne",
        optionFour: "Lybie",
        CorrectAnswer: 3);
    questionsList.add(que5);

    QuestionModel que6 = QuestionModel(
        id: 6,
        question: "Quel est le nom du pays correspondant à ce drapeau ?",
        imageURL: "assets/ic_flag_of_india.png",
        optionOne: "Autriche",
        optionTwo: "Kenya",
        optionThree: "India",
        optionFour: "Israël",
        CorrectAnswer: 3);
    questionsList.add(que6);

    QuestionModel que7 = QuestionModel(
        id: 7,
        question: "Quel est le nom du pays correspondant à ce drapeau ?",
        imageURL: "assets/ic_flag_of_kuwait.png",
        optionOne: "Laos",
        optionTwo: "Malte",
        optionThree: "Koweït",
        optionFour: "Liban",
        CorrectAnswer: 3);
    questionsList.add(que7);

    QuestionModel que8 = QuestionModel(
        id: 8,
        question: "Quel est le nom du pays correspondant à ce drapeau ?",
        imageURL: "assets/ic_flag_of_new_zealand.png",
        optionOne: "Nigeria",
        optionTwo: "Nouvelle-Zélande",
        optionThree: "Pérou",
        optionFour: "Pologne",
        CorrectAnswer: 2);
    questionsList.add(que8);

    QuestionModel que9 = QuestionModel(
        id: 9,
        question: "Quel est le nom du pays correspondant à ce drapeau ?",
        imageURL: "assets/ic_flag_of_denmark.png",
        optionOne: "Danemark",
        optionTwo: "Estonie",
        optionThree: "Finlande",
        optionFour: "Géorgie",
        CorrectAnswer: 1);
    questionsList.add(que9);

    QuestionModel que10 = QuestionModel(
        id: 10,
        question: "Quel est le nom du pays correspondant à ce drapeau ?",
        imageURL: "assets/ic_flag_of_fiji.png",
        optionOne: "Slovénie",
        optionTwo: "Tunisie",
        optionThree: "Zimbabwe",
        optionFour: "Fiji",
        CorrectAnswer: 4);
    questionsList.add(que10);

    return questionsList;
  }
}
