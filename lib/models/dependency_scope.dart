/// A notation of whether the dependency is required for the primary build
/// artifact (runtime) or is only used for development. Future versions of this
/// specification may allow for more granular scopes.
/// example: `'runtime'`
enum DependencyScope {
  runtime._('runtime'),
  development._('development');

  const DependencyScope._(this.value);

  /// Creates a DependencyScope from a json string.
  factory DependencyScope.fromJson(String json) {
    return DependencyScope.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown DependencyScope value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static DependencyScope? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return DependencyScope.fromJson(json);
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
