enum ReposListForUserParameter2 {
  created._('created'),
  updated._('updated'),
  pushed._('pushed'),
  fullName._('full_name');

  const ReposListForUserParameter2._(this.value);

  /// Creates a ReposListForUserParameter2 from a json string.
  factory ReposListForUserParameter2.fromJson(String json) {
    return ReposListForUserParameter2.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown ReposListForUserParameter2 value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReposListForUserParameter2? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return ReposListForUserParameter2.fromJson(json);
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
