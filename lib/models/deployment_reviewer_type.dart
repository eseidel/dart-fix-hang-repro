/// The type of reviewer.
/// example: `'User'`
enum DeploymentReviewerType {
  user._('User'),
  team._('Team');

  const DeploymentReviewerType._(this.value);

  /// Creates a DeploymentReviewerType from a json string.
  factory DeploymentReviewerType.fromJson(String json) {
    return DeploymentReviewerType.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown DeploymentReviewerType value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static DeploymentReviewerType? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return DeploymentReviewerType.fromJson(json);
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
