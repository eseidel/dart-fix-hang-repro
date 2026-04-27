/// The state of the advisory.
enum RepositoryAdvisoryUpdateState {
  published._('published'),
  closed._('closed'),
  draft._('draft');

  const RepositoryAdvisoryUpdateState._(this.value);

  /// Creates a RepositoryAdvisoryUpdateState from a json string.
  factory RepositoryAdvisoryUpdateState.fromJson(String json) {
    return RepositoryAdvisoryUpdateState.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown RepositoryAdvisoryUpdateState value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryAdvisoryUpdateState? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return RepositoryAdvisoryUpdateState.fromJson(json);
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
