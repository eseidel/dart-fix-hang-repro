/// Describe whether all repositories have been selected or there's a selection
/// involved
enum AuthenticationTokenRepositorySelection {
  all._('all'),
  selected._('selected');

  const AuthenticationTokenRepositorySelection._(this.value);

  /// Creates a AuthenticationTokenRepositorySelection from a json string.
  factory AuthenticationTokenRepositorySelection.fromJson(String json) {
    return AuthenticationTokenRepositorySelection.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown AuthenticationTokenRepositorySelection value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static AuthenticationTokenRepositorySelection? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return AuthenticationTokenRepositorySelection.fromJson(json);
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
