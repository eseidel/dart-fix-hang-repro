enum UsersGetContextForUserParameter1 {
  organization._('organization'),
  repository._('repository'),
  issue._('issue'),
  pullRequest._('pull_request');

  const UsersGetContextForUserParameter1._(this.value);

  /// Creates a UsersGetContextForUserParameter1 from a json string.
  factory UsersGetContextForUserParameter1.fromJson(String json) {
    return UsersGetContextForUserParameter1.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown UsersGetContextForUserParameter1 value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static UsersGetContextForUserParameter1? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return UsersGetContextForUserParameter1.fromJson(json);
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
