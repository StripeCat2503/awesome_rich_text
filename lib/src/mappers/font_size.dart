import 'package:awesome_rich_text/src/mappers/base.dart';

class FontSizeMapper extends BaseMapper<double?> {
  FontSizeMapper(String value) : super(value);

  @override
  double? call() {
    return double.tryParse(value);
  }
}
