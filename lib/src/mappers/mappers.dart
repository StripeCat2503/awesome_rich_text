import 'package:awesome_rich_text/src/style.dart';
import 'package:awesome_rich_text/src/mappers/base.dart';
import 'package:awesome_rich_text/src/mappers/color.dart';
import 'package:awesome_rich_text/src/mappers/font_family.dart';
import 'package:awesome_rich_text/src/mappers/font_size.dart';
import 'package:awesome_rich_text/src/mappers/font_weight.dart';

Map<String, BaseMapper> _styledMappers(String value) => {
      Style.color: ColorMapper(value),
      Style.fs: FontSizeMapper(value),
      Style.fw: FontWeightMapper(value),
      Style.fm: FontFamilyMapper(value),
    };

T? mapper<T>(String value) {
  final map = _styledMappers(value);
  for (final entryValue in map.values) {
    final call = entryValue();
    if (call is T) {
      return call;
    }
  }

  return null;
}
