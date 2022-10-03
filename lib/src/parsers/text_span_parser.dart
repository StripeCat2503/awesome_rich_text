import 'package:awesome_rich_text/src/parsers/base_text_parser.dart';
import 'package:awesome_rich_text/src/parsers/parsers.dart';
import 'package:awesome_rich_text/src/validators/text_span_validator.dart';
import 'package:flutter/material.dart';

class TextSpanParser extends BaseTextParser<TextSpan, TextSpanValidator> {
  TextSpanParser(String text) : super(text, TextSpanValidator(text));

  @override
  TextSpan parse() {
    if (!validator.valid) return TextSpan(text: text);

    final openCurlyBraceIndex = text.indexOf('{');
    final closeCurlyBraceIndex = text.indexOf('}');
    final openQuoteIndex = text.indexOf('`');
    final closeQuoteIndex = text.lastIndexOf('`');

    final spanText = text.substring(openQuoteIndex + 1, closeQuoteIndex);

    final styleString =
        text.substring(openCurlyBraceIndex + 1, closeCurlyBraceIndex);
    final textStyle = parsers.style(styleString, style).parse();

    return TextSpan(
      text: spanText,
      style: textStyle,
    );
  }
}
