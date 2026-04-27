enum DependencyGraphDiffInnerChangeType {
  added._('added'),
  removed._('removed');

  const DependencyGraphDiffInnerChangeType._(this.value);

  /// Creates a DependencyGraphDiffInnerChangeType from a json string.
  factory DependencyGraphDiffInnerChangeType.fromJson(String json) {
    return DependencyGraphDiffInnerChangeType.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown DependencyGraphDiffInnerChangeType value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static DependencyGraphDiffInnerChangeType? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return DependencyGraphDiffInnerChangeType.fromJson(json);
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
