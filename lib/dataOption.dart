import 'package:quiz_app/models/options.dart';
import 'package:quiz_app/myWidgets/constantes.dart';

class DataOption {
  List<OptionModel> getOptions() {
    List<OptionModel> options = [];

    OptionModel option1 = OptionModel(
        optionNumber: 1,
        textOption: '',
        fontWeight: cFontweightNormal,
        optionColor: cColorOptionDefault,
        isOptionCorrect: false,
        isOptionSelected: false);
    OptionModel option2 = OptionModel(
        optionNumber: 2,
        textOption: '',
        fontWeight: cFontweightNormal,
        optionColor: cColorOptionDefault,
        isOptionCorrect: false,
        isOptionSelected: false);
    OptionModel option3 = OptionModel(
        optionNumber: 3,
        textOption: '',
        fontWeight: cFontweightNormal,
        optionColor: cColorOptionDefault,
        isOptionCorrect: false,
        isOptionSelected: false);
    OptionModel option4 = OptionModel(
        optionNumber: 4,
        textOption: '',
        fontWeight: cFontweightNormal,
        optionColor: cColorOptionDefault,
        isOptionCorrect: false,
        isOptionSelected: false);

    options.add(option1);
    options.add(option2);
    options.add(option3);
    options.add(option4);

    return options;
  }
}
