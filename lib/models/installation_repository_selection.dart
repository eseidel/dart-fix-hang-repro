/// Describe whether all repositories have been selected or there's a selection
/// involved
enum InstallationRepositorySelection {
  all._('all'),
  selected._('selected');

  const InstallationRepositorySelection._(this.value);

  /// Creates a InstallationRepositorySelection from a json string.
  factory InstallationRepositorySelection.fromJson(String json) {
    return InstallationRepositorySelection.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown InstallationRepositorySelection value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static InstallationRepositorySelection? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return InstallationRepositorySelection.fromJson(json);
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
