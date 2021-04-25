import 'package:floor_calculator/helpers/parse_helper.dart';

class ValidatorHelper {
  static String isValidText(String text) {
    if (text.isEmpty)
      return 'Campo Obrigatório';
    else if (ParseHelper.toDouble(text) <= 0) return 'Somente Valores Positivos';
  }
}
