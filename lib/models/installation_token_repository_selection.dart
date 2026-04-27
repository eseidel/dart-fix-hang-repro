enum InstallationTokenRepositorySelection {
  all._('all'),
  selected._('selected');

  const InstallationTokenRepositorySelection._(this.value);

  /// Creates a InstallationTokenRepositorySelection from a json string.
  factory InstallationTokenRepositorySelection.fromJson(String json) {
    return InstallationTokenRepositorySelection.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown InstallationTokenRepositorySelection value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static InstallationTokenRepositorySelection? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return InstallationTokenRepositorySelection.fromJson(json);
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
