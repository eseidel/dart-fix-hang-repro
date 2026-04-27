enum RepositoryRuleFileExtensionRestrictionType {
  fileExtensionRestriction._('file_extension_restriction');

  const RepositoryRuleFileExtensionRestrictionType._(this.value);

  /// Creates a RepositoryRuleFileExtensionRestrictionType from a json string.
  factory RepositoryRuleFileExtensionRestrictionType.fromJson(String json) {
    return RepositoryRuleFileExtensionRestrictionType.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown RepositoryRuleFileExtensionRestrictionType value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRuleFileExtensionRestrictionType? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return RepositoryRuleFileExtensionRestrictionType.fromJson(json);
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
