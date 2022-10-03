import 'package:awesome_rich_text/src/extensions/string.dart';
import 'package:awesome_rich_text/src/mappers/base_mapper.dart';
import 'package:flutter/material.dart';

class ColorMapper extends BaseMapper<Color?> {
  ColorMapper(String value) : super(value);

  @override
  Color? call() {
    return value.color;
  }
}
