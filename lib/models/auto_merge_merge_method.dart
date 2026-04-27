/// The merge method to use.
enum AutoMergeMergeMethod {
  merge._('merge'),
  squash._('squash'),
  rebase._('rebase');

  const AutoMergeMergeMethod._(this.value);

  /// Creates a AutoMergeMergeMethod from a json string.
  factory AutoMergeMergeMethod.fromJson(String json) {
    return AutoMergeMergeMethod.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown AutoMergeMergeMethod value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static AutoMergeMergeMethod? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return AutoMergeMergeMethod.fromJson(json);
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
