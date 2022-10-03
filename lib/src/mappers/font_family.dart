import 'package:awesome_rich_text/src/mappers/base_mapper.dart';

class FontFamilyMapper extends BaseMapper<String> {
  FontFamilyMapper(String value) : super(value);

  @override
  String call() => value;
}
