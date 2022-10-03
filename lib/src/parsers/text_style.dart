import 'package:awesome_rich_text/src/extensions/map.dart';
import 'package:awesome_rich_text/src/parsers/base.dart';
import 'package:awesome_rich_text/src/validators/text_style.dart';
import 'package:flutter/material.dart';

class TextStyleParser extends BaseTextParser<TextStyle?, TextStyleValidator> {
  TextStyleParser(String text) : super(text, TextStyleValidator(text));

  @override
  TextStyle? parse() {
    if (!validator.valid) return null;

    return _toMap(text).textStyle;
  }

  Map<String, String> _toMap(String text) {
    final map = <String, String>{};
    final entries = text.replaceAll(' ', '').split(',');

    for (final entry in entries) {
      final entryParts = entry.split(':');
      if (entryParts.length == 2) {
        final key = entryParts[0];
        final value = entryParts[1];
        map[key] = value;
      }
    }

    return map;
  }
}
