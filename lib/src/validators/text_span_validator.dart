import 'package:awesome_rich_text/src/validators/base_validator.dart';

class TextSpanValidator extends BaseValidator {
  TextSpanValidator(String s) : super(s);

  @override
  bool get valid {
    if (s.isEmpty) return false;

    int openCurlyBrace = 0;
    int closeCurlyBrace = 0;
    int quote = 0;

    for (int i = 0; i < s.length; i++) {
      final c = s[i];

      if (c == '{') {
        openCurlyBrace++;
      }

      if (c == '}') {
        closeCurlyBrace++;
      }

      if (c == '`') {
        quote++;
      }
    }

    return openCurlyBrace == 1 && closeCurlyBrace == 1 && quote == 2;
  }
}
