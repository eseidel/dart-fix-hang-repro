enum ReposListForAuthenticatedUserParameter2 {
  all._('all'),
  owner._('owner'),
  public._('public'),
  private._('private'),
  member._('member');

  const ReposListForAuthenticatedUserParameter2._(this.value);

  /// Creates a ReposListForAuthenticatedUserParameter2 from a json string.
  factory ReposListForAuthenticatedUserParameter2.fromJson(String json) {
    return ReposListForAuthenticatedUserParameter2.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown ReposListForAuthenticatedUserParameter2 value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReposListForAuthenticatedUserParameter2? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return ReposListForAuthenticatedUserParameter2.fromJson(json);
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
