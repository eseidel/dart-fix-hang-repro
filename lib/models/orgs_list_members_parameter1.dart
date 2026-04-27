enum OrgsListMembersParameter1 {
  n2faDisabled._('2fa_disabled'),
  n2faInsecure._('2fa_insecure'),
  all._('all');

  const OrgsListMembersParameter1._(this.value);

  /// Creates a OrgsListMembersParameter1 from a json string.
  factory OrgsListMembersParameter1.fromJson(String json) {
    return OrgsListMembersParameter1.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown OrgsListMembersParameter1 value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static OrgsListMembersParameter1? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return OrgsListMembersParameter1.fromJson(json);
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
