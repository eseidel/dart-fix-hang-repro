enum ReposListForAuthenticatedUserParameter4 {
  asc._('asc'),
  desc._('desc');

  const ReposListForAuthenticatedUserParameter4._(this.value);

  /// Creates a ReposListForAuthenticatedUserParameter4 from a json string.
  factory ReposListForAuthenticatedUserParameter4.fromJson(String json) {
    return ReposListForAuthenticatedUserParameter4.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown ReposListForAuthenticatedUserParameter4 value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReposListForAuthenticatedUserParameter4? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return ReposListForAuthenticatedUserParameter4.fromJson(json);
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
