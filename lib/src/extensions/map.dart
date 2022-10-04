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
        case Style.bgColor:
          style = style.copyWith(
            backgroundColor: mapper<Color>(
              value,
              defaultValue: style.backgroundColor,
            ),
          );
          break;
        case Style.color:
          style = style.copyWith(
            color: mapper<Color>(
              value,
              defaultValue: style.color,
            ),
          );
          break;
        case Style.fs:
          style = style.copyWith(
            fontSize: mapper<double>(
              value,
              defaultValue: style.fontSize,
            ),
          );
          break;
        case Style.fw:
          style = style.copyWith(
            fontWeight: mapper<FontWeight>(
              value,
              defaultValue: style.fontWeight,
            ),
          );
          break;
        case Style.fm:
          style = style.copyWith(
            fontFamily: mapper<String>(
              value,
              defaultValue: style.fontFamily,
            ),
          );
          break;
        case Style.ls:
          style = style.copyWith(
            letterSpacing: mapper<double>(
              value,
              defaultValue: style.letterSpacing,
            ),
          );
          break;
        case Style.ws:
          style = style.copyWith(
            wordSpacing: mapper<double>(
              value,
              defaultValue: style.wordSpacing,
            ),
          );
          break;
      }
    }

    return style;
  }
}
