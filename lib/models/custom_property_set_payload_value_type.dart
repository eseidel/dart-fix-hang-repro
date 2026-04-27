/// The type of the value for the property
/// example: `'single_select'`
enum CustomPropertySetPayloadValueType {
  string._('string'),
  singleSelect._('single_select'),
  multiSelect._('multi_select'),
  trueFalse._('true_false');

  const CustomPropertySetPayloadValueType._(this.value);

  /// Creates a CustomPropertySetPayloadValueType from a json string.
  factory CustomPropertySetPayloadValueType.fromJson(String json) {
    return CustomPropertySetPayloadValueType.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown CustomPropertySetPayloadValueType value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CustomPropertySetPayloadValueType? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CustomPropertySetPayloadValueType.fromJson(json);
  }

  /// The value of the enum, as a string.  This is the exact value
  /// from the OpenAPI spec and will be used for network transport.
  final String value;

  /// Converts the enum to a json string.
  String toJson() => value;

  /// Returns the string value of the enum.
  @override
  String toString() => value;
}
