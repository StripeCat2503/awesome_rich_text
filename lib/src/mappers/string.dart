import 'package:awesome_rich_text/src/mappers/base.dart';

class StringMapper extends BaseMapper<String> {
  StringMapper(String value) : super(value);

  @override
  String call() => value;
}
