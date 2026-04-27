enum SecurityAdvisoriesListRepositoryAdvisoriesParameter7 {
  triage._('triage'),
  draft._('draft'),
  published._('published'),
  closed._('closed');

  const SecurityAdvisoriesListRepositoryAdvisoriesParameter7._(this.value);

  /// Creates a SecurityAdvisoriesListRepositoryAdvisoriesParameter7 from a json string.
  factory SecurityAdvisoriesListRepositoryAdvisoriesParameter7.fromJson(
    String json,
  ) {
    return SecurityAdvisoriesListRepositoryAdvisoriesParameter7.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown SecurityAdvisoriesListRepositoryAdvisoriesParameter7 value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static SecurityAdvisoriesListRepositoryAdvisoriesParameter7? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return SecurityAdvisoriesListRepositoryAdvisoriesParameter7.fromJson(json);
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
