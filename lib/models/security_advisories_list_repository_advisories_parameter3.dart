enum SecurityAdvisoriesListRepositoryAdvisoriesParameter3 {
  created._('created'),
  updated._('updated'),
  published._('published');

  const SecurityAdvisoriesListRepositoryAdvisoriesParameter3._(this.value);

  /// Creates a SecurityAdvisoriesListRepositoryAdvisoriesParameter3 from a json string.
  factory SecurityAdvisoriesListRepositoryAdvisoriesParameter3.fromJson(
    String json,
  ) {
    return SecurityAdvisoriesListRepositoryAdvisoriesParameter3.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown SecurityAdvisoriesListRepositoryAdvisoriesParameter3 value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static SecurityAdvisoriesListRepositoryAdvisoriesParameter3? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return SecurityAdvisoriesListRepositoryAdvisoriesParameter3.fromJson(json);
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
