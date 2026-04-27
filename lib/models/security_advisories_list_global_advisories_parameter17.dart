enum SecurityAdvisoriesListGlobalAdvisoriesParameter17 {
  updated._('updated'),
  published._('published'),
  epssPercentage._('epss_percentage'),
  epssPercentile._('epss_percentile');

  const SecurityAdvisoriesListGlobalAdvisoriesParameter17._(this.value);

  /// Creates a SecurityAdvisoriesListGlobalAdvisoriesParameter17 from a json string.
  factory SecurityAdvisoriesListGlobalAdvisoriesParameter17.fromJson(
    String json,
  ) {
    return SecurityAdvisoriesListGlobalAdvisoriesParameter17.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown SecurityAdvisoriesListGlobalAdvisoriesParameter17 value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static SecurityAdvisoriesListGlobalAdvisoriesParameter17? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return SecurityAdvisoriesListGlobalAdvisoriesParameter17.fromJson(json);
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
