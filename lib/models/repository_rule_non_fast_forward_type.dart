enum RepositoryRuleNonFastForwardType {
  nonFastForward._('non_fast_forward');

  const RepositoryRuleNonFastForwardType._(this.value);

  /// Creates a RepositoryRuleNonFastForwardType from a json string.
  factory RepositoryRuleNonFastForwardType.fromJson(String json) {
    return RepositoryRuleNonFastForwardType.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown RepositoryRuleNonFastForwardType value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRuleNonFastForwardType? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return RepositoryRuleNonFastForwardType.fromJson(json);
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
