// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
enum SecurityAdvisoriesListOrgRepositoryAdvisoriesParameter6 {
  triage._('triage'),
  draft._('draft'),
  published._('published'),
  closed._('closed');

  const SecurityAdvisoriesListOrgRepositoryAdvisoriesParameter6._(this.value);

  /// Creates a SecurityAdvisoriesListOrgRepositoryAdvisoriesParameter6 from a json string.
  factory SecurityAdvisoriesListOrgRepositoryAdvisoriesParameter6.fromJson(
    String json,
  ) {
    return SecurityAdvisoriesListOrgRepositoryAdvisoriesParameter6.values
        .firstWhere(
          (value) => value.value == json,
          orElse: () => throw FormatException(
            'Unknown SecurityAdvisoriesListOrgRepositoryAdvisoriesParameter6 value: $json',
          ),
        );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static SecurityAdvisoriesListOrgRepositoryAdvisoriesParameter6? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return SecurityAdvisoriesListOrgRepositoryAdvisoriesParameter6.fromJson(
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
