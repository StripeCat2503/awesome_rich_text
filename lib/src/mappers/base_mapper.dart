abstract class BaseMapper<T> {
  BaseMapper(this.value);

  final String value;

  T call();
}
