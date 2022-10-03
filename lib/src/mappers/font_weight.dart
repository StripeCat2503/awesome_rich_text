import 'package:awesome_rich_text/src/mappers/base_mapper.dart';
import 'package:flutter/material.dart';

class FontWeightMapper extends BaseMapper<FontWeight> {
  FontWeightMapper(String value) : super(value);

  @override
  FontWeight call() {
    switch (value) {
      case '100':
        return FontWeight.w100;
      case '200':
        return FontWeight.w200;
      case '300':
        return FontWeight.w300;
      case '400':
        return FontWeight.w400;
      case '500':
        return FontWeight.w500;
      case '600':
        return FontWeight.w600;
      case '700':
        return FontWeight.w700;
      case '800':
        return FontWeight.w800;
      case '900':
        return FontWeight.w900;
      case 'bold':
        return FontWeight.bold;
      case 'normal':
      default:
        return FontWeight.normal;
    }
  }
}
