/// Whether this rule targets a branch or tag.
/// example: `'branch'`
enum DeploymentBranchPolicyType {
  branch._('branch'),
  tag._('tag');

  const DeploymentBranchPolicyType._(this.value);

  /// Creates a DeploymentBranchPolicyType from a json string.
  factory DeploymentBranchPolicyType.fromJson(String json) {
    return DeploymentBranchPolicyType.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown DeploymentBranchPolicyType value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static DeploymentBranchPolicyType? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return DeploymentBranchPolicyType.fromJson(json);
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
