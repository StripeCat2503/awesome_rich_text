import 'dart:developer';

import 'package:awesome_rich_text/src/parsers/base_text_parser.dart';
import 'package:awesome_rich_text/src/parsers/parsers.dart';
import 'package:awesome_rich_text/src/validators/rich_text_validator.dart';
import 'package:flutter/widgets.dart';

class RichTextParser extends BaseTextParser<List<TextSpan>, RichTextValidator> {
  RichTextParser(String text) : super(text, RichTextValidator(text));

  @override
  List<TextSpan> parse() {
    if (!validator.valid) return [];

    final parsedArray = _parseContent(text);

    log(parsedArray.toString());

    final spans = _parseTextSpans(parsedArray, style);

    return spans;
  }

  List<String> _parseContent(String content) {
    final stack = <String>[];

    int openCurlyBraceIndex = -1;
    int closeCurlyBraceIndex = -1;
    int openQuoteIndex = -1;
    int closeQuoteIndex = -1;

    final chars = content.characters.map((e) => e).toList();
    final parsed = <String>[];
    int index = -1;

    while (chars.isNotEmpty) {
      final c = chars.removeAt(0);
      stack.add(c);

      index++;

      if (c == '{' && openCurlyBraceIndex == -1) {
        openCurlyBraceIndex = index;
      }

      if (c == '}' && closeCurlyBraceIndex == -1) {
        closeCurlyBraceIndex = index;
      }

      if (c == '`') {
        if (openQuoteIndex == -1) {
          openQuoteIndex = index;
        } else if (closeQuoteIndex == -1) {
          closeQuoteIndex = index;
        }
      }

      final validSyntax = openCurlyBraceIndex != -1 &&
          closeCurlyBraceIndex != -1 &&
          openQuoteIndex != -1 &&
          closeQuoteIndex != -1;

      if (validSyntax) {
        if (openCurlyBraceIndex > 0) {
          parsed.add(stack.sublist(0, openCurlyBraceIndex).join());
        }

        parsed.add(
          stack.sublist(openCurlyBraceIndex, closeQuoteIndex + 1).join(),
        );

        stack.clear();

        index = -1;
        openCurlyBraceIndex = -1;
        closeCurlyBraceIndex = -1;
        openQuoteIndex = -1;
        closeQuoteIndex = -1;
      }
    }

    if (stack.isNotEmpty) {
      parsed.add(stack.join());
    }

    return parsed;
  }

  List<TextSpan> _parseTextSpans(
      List<String> parsedArray, TextStyle? textStyle) {
    final spans = <TextSpan>[];

    for (final string in parsedArray) {
      final span = parsers.span(string, textStyle).parse();
      spans.add(span);
    }

    return spans;
  }
}
