/// The organization policy for allowing or disallowing Copilot Chat in the IDE.
enum CopilotOrganizationDetailsIdeChat {
  enabled._('enabled'),
  disabled._('disabled'),
  unconfigured._('unconfigured');

  const CopilotOrganizationDetailsIdeChat._(this.value);

  /// Creates a CopilotOrganizationDetailsIdeChat from a json string.
  factory CopilotOrganizationDetailsIdeChat.fromJson(String json) {
    return CopilotOrganizationDetailsIdeChat.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown CopilotOrganizationDetailsIdeChat value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CopilotOrganizationDetailsIdeChat? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CopilotOrganizationDetailsIdeChat.fromJson(json);
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
