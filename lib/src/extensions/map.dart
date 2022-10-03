import 'package:awesome_rich_text/src/style.dart';
import 'package:awesome_rich_text/src/mappers/mappers.dart';
import 'package:flutter/material.dart';

extension StyledMapExtension on Map<String, String> {
  TextStyle? get textStyle {
    TextStyle style = const TextStyle();
    for (final entry in entries) {
      final key = entry.key;
      final value = entry.value;

      switch (key) {
        case Style.color:
          style = style.copyWith(color: mapper<Color>(value));
          break;
        case Style.fs:
          style = style.copyWith(fontSize: mapper<double>(value));
          break;
        case Style.fw:
          style = style.copyWith(fontWeight: mapper<FontWeight>(value));
          break;
        case Style.fm:
          style = style.copyWith(fontFamily: mapper<String>(value));
          break;
      }
    }

    return style;
  }
}
