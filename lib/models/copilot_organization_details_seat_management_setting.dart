/// The mode of assigning new seats.
enum CopilotOrganizationDetailsSeatManagementSetting {
  assignAll._('assign_all'),
  assignSelected._('assign_selected'),
  disabled._('disabled'),
  unconfigured._('unconfigured');

  const CopilotOrganizationDetailsSeatManagementSetting._(this.value);

  /// Creates a CopilotOrganizationDetailsSeatManagementSetting from a json string.
  factory CopilotOrganizationDetailsSeatManagementSetting.fromJson(
    String json,
  ) {
    return CopilotOrganizationDetailsSeatManagementSetting.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown CopilotOrganizationDetailsSeatManagementSetting value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CopilotOrganizationDetailsSeatManagementSetting? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return CopilotOrganizationDetailsSeatManagementSetting.fromJson(json);
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
