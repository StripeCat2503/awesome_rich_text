import 'package:awesome_rich_text/src/validators/base.dart';
import 'package:flutter/material.dart';

abstract class BaseTextParser<T, V extends BaseValidator> {
  BaseTextParser(this.text, this.validator);

  TextStyle? style;
  final String text;
  final V validator;

  T parse();
}
