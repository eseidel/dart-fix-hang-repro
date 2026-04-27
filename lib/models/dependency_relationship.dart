/// A notation of whether a dependency is requested directly by this manifest or
/// is a dependency of another dependency.
/// example: `'direct'`
enum DependencyRelationship {
  direct._('direct'),
  indirect._('indirect');

  const DependencyRelationship._(this.value);

  /// Creates a DependencyRelationship from a json string.
  factory DependencyRelationship.fromJson(String json) {
    return DependencyRelationship.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown DependencyRelationship value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static DependencyRelationship? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return DependencyRelationship.fromJson(json);
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
