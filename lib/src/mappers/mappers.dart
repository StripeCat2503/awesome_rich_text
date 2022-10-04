import 'package:awesome_rich_text/src/style.dart';
import 'package:awesome_rich_text/src/mappers/base.dart';
import 'package:awesome_rich_text/src/mappers/color.dart';
import 'package:awesome_rich_text/src/mappers/string.dart';
import 'package:awesome_rich_text/src/mappers/double.dart';
import 'package:awesome_rich_text/src/mappers/font_weight.dart';

Map<String, BaseMapper> _mappers(String value) => {
      Style.color: ColorMapper(value),
      Style.fs: DoubleMapper(value),
      Style.fw: FontWeightMapper(value),
      Style.fm: StringMapper(value),
      Style.bgColor: ColorMapper(value),
      Style.ls: DoubleMapper(value),
      Style.ws: DoubleMapper(value),
    };

T? mapper<T>(
  String value, {
  T? defaultValue,
}) {
  final map = _mappers(value);
  for (final entryValue in map.values) {
    final call = entryValue();
    if (call is T) {
      return call;
    }
  }

  return defaultValue;
}
