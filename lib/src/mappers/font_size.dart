import 'package:awesome_rich_text/src/mappers/base_mapper.dart';

class FontSizeMapper extends BaseMapper<double?> {
  FontSizeMapper(String value) : super(value);

  @override
  double? call() {
    return double.tryParse(value);
  }
}
