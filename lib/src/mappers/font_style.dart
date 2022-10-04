import 'package:awesome_rich_text/src/mappers/base.dart';
import 'package:flutter/material.dart';

class FontStyleMapper extends BaseMapper<FontStyle> {
  FontStyleMapper(String value) : super(value);

  @override
  FontStyle call() {
    if (value == 'italic') return FontStyle.italic;

    return FontStyle.normal;
  }
}
