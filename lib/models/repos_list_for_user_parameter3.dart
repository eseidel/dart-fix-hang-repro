enum ReposListForUserParameter3 {
  asc._('asc'),
  desc._('desc');

  const ReposListForUserParameter3._(this.value);

  /// Creates a ReposListForUserParameter3 from a json string.
  factory ReposListForUserParameter3.fromJson(String json) {
    return ReposListForUserParameter3.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown ReposListForUserParameter3 value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReposListForUserParameter3? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return ReposListForUserParameter3.fromJson(json);
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
