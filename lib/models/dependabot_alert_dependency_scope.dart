/// The execution scope of the vulnerable dependency.
enum DependabotAlertDependencyScope {
  development._('development'),
  runtime._('runtime');

  const DependabotAlertDependencyScope._(this.value);

  /// Creates a DependabotAlertDependencyScope from a json string.
  factory DependabotAlertDependencyScope.fromJson(String json) {
    return DependabotAlertDependencyScope.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown DependabotAlertDependencyScope value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static DependabotAlertDependencyScope? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return DependabotAlertDependencyScope.fromJson(json);
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
