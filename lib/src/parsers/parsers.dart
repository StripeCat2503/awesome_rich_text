import 'package:awesome_rich_text/src/parsers/rich_text_parser.dart';
import 'package:awesome_rich_text/src/parsers/text_span_parser.dart';
import 'package:awesome_rich_text/src/parsers/text_style_parser.dart';
import 'package:flutter/material.dart';

class Parsers {
  RichTextParser text(String text, TextStyle? textStyle) =>
      RichTextParser(text)..style = textStyle;

  TextSpanParser span(String text, TextStyle? textStyle) =>
      TextSpanParser(text)..style = textStyle;

  TextStyleParser style(String text, TextStyle? textStyle) =>
      TextStyleParser(text)..style = textStyle;
}

Parsers get parsers => Parsers();
