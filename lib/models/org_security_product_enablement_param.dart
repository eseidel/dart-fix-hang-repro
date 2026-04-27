enum OrgSecurityProductEnablementParam {
  enableAll._('enable_all'),
  disableAll._('disable_all');

  const OrgSecurityProductEnablementParam._(this.value);

  /// Creates a OrgSecurityProductEnablementParam from a json string.
  factory OrgSecurityProductEnablementParam.fromJson(String json) {
    return OrgSecurityProductEnablementParam.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown OrgSecurityProductEnablementParam value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static OrgSecurityProductEnablementParam? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return OrgSecurityProductEnablementParam.fromJson(json);
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
