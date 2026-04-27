/// The organization policy for allowing or disallowing Copilot features on
/// GitHub.com.
enum CopilotOrganizationDetailsPlatformChat {
  enabled._('enabled'),
  disabled._('disabled'),
  unconfigured._('unconfigured');

  const CopilotOrganizationDetailsPlatformChat._(this.value);

  /// Creates a CopilotOrganizationDetailsPlatformChat from a json string.
  factory CopilotOrganizationDetailsPlatformChat.fromJson(String json) {
    return CopilotOrganizationDetailsPlatformChat.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown CopilotOrganizationDetailsPlatformChat value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CopilotOrganizationDetailsPlatformChat? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CopilotOrganizationDetailsPlatformChat.fromJson(json);
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
