enum RepositoryRuleMaxFileSizeType {
  maxFileSize._('max_file_size');

  const RepositoryRuleMaxFileSizeType._(this.value);

  /// Creates a RepositoryRuleMaxFileSizeType from a json string.
  factory RepositoryRuleMaxFileSizeType.fromJson(String json) {
    return RepositoryRuleMaxFileSizeType.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown RepositoryRuleMaxFileSizeType value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRuleMaxFileSizeType? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return RepositoryRuleMaxFileSizeType.fromJson(json);
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
