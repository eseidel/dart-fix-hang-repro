/// The type of credit the user is receiving.
enum SecurityAdvisoryCreditTypes {
  analyst._('analyst'),
  finder._('finder'),
  reporter._('reporter'),
  coordinator._('coordinator'),
  remediationDeveloper._('remediation_developer'),
  remediationReviewer._('remediation_reviewer'),
  remediationVerifier._('remediation_verifier'),
  tool._('tool'),
  sponsor._('sponsor'),
  other._('other');

  const SecurityAdvisoryCreditTypes._(this.value);

  /// Creates a SecurityAdvisoryCreditTypes from a json string.
  factory SecurityAdvisoryCreditTypes.fromJson(String json) {
    return SecurityAdvisoryCreditTypes.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown SecurityAdvisoryCreditTypes value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static SecurityAdvisoryCreditTypes? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return SecurityAdvisoryCreditTypes.fromJson(json);
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
