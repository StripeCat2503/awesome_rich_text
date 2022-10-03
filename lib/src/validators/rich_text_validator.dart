import 'package:awesome_rich_text/src/validators/base_validator.dart';

class RichTextValidator extends BaseValidator {
  RichTextValidator(String s) : super(s);

  @override
  bool get valid {
    if (s.isEmpty) return false;

    return true;
  }
}
