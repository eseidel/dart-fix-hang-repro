/// The state of the advisory.
enum RepositoryAdvisoryState {
  published._('published'),
  closed._('closed'),
  withdrawn._('withdrawn'),
  draft._('draft'),
  triage._('triage');

  const RepositoryAdvisoryState._(this.value);

  /// Creates a RepositoryAdvisoryState from a json string.
  factory RepositoryAdvisoryState.fromJson(String json) {
    return RepositoryAdvisoryState.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown RepositoryAdvisoryState value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryAdvisoryState? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return RepositoryAdvisoryState.fromJson(json);
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
