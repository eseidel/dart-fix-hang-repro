enum RepositoryRuleFilePathRestrictionType {
  filePathRestriction._('file_path_restriction');

  const RepositoryRuleFilePathRestrictionType._(this.value);

  /// Creates a RepositoryRuleFilePathRestrictionType from a json string.
  factory RepositoryRuleFilePathRestrictionType.fromJson(String json) {
    return RepositoryRuleFilePathRestrictionType.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown RepositoryRuleFilePathRestrictionType value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRuleFilePathRestrictionType? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return RepositoryRuleFilePathRestrictionType.fromJson(json);
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
