enum ReposListForUserParameter1 {
  all._('all'),
  owner._('owner'),
  member._('member');

  const ReposListForUserParameter1._(this.value);

  /// Creates a ReposListForUserParameter1 from a json string.
  factory ReposListForUserParameter1.fromJson(String json) {
    return ReposListForUserParameter1.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown ReposListForUserParameter1 value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReposListForUserParameter1? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return ReposListForUserParameter1.fromJson(json);
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
