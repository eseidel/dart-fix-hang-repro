/// The source of the repository property. Defaults to 'custom' if not
/// specified.
enum RepositoryRulesetConditionsRepositoryPropertySpecSource {
  custom._('custom'),
  system._('system');

  const RepositoryRulesetConditionsRepositoryPropertySpecSource._(this.value);

  /// Creates a RepositoryRulesetConditionsRepositoryPropertySpecSource from a json string.
  factory RepositoryRulesetConditionsRepositoryPropertySpecSource.fromJson(
    String json,
  ) {
    return RepositoryRulesetConditionsRepositoryPropertySpecSource.values
        .firstWhere(
          (value) => value.value == json,
          orElse: () => throw FormatException(
            'Unknown RepositoryRulesetConditionsRepositoryPropertySpecSource value: $json',
          ),
        );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRulesetConditionsRepositoryPropertySpecSource? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return RepositoryRulesetConditionsRepositoryPropertySpecSource.fromJson(
      json,
    );
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
