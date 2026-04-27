enum SecurityAdvisoriesListOrgRepositoryAdvisoriesParameter2 {
  created._('created'),
  updated._('updated'),
  published._('published');

  const SecurityAdvisoriesListOrgRepositoryAdvisoriesParameter2._(this.value);

  /// Creates a SecurityAdvisoriesListOrgRepositoryAdvisoriesParameter2 from a json string.
  factory SecurityAdvisoriesListOrgRepositoryAdvisoriesParameter2.fromJson(
    String json,
  ) {
    return SecurityAdvisoriesListOrgRepositoryAdvisoriesParameter2.values
        .firstWhere(
          (value) => value.value == json,
          orElse: () => throw FormatException(
            'Unknown SecurityAdvisoriesListOrgRepositoryAdvisoriesParameter2 value: $json',
          ),
        );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static SecurityAdvisoriesListOrgRepositoryAdvisoriesParameter2? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return SecurityAdvisoriesListOrgRepositoryAdvisoriesParameter2.fromJson(
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
