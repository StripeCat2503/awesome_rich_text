import 'package:flutter/widgets.dart';

extension StringColorExtension on String {
  Color? get color {
    var hexColor = replaceAll('#', '');

    if (hexColor.length == 6) {
      hexColor = 'ff$hexColor';
    }

    if (hexColor.length == 8) {
      final value = int.tryParse('0x$hexColor');
      if (value != null) {
        return Color(value);
      }
    }

    return null;
  }
}
