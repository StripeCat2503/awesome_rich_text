import 'package:awesome_rich_text/src/mappers/base.dart';

class DoubleMapper extends BaseMapper<double?> {
  DoubleMapper(String value) : super(value);

  @override
  double? call() {
    return double.tryParse(value);
  }
}
