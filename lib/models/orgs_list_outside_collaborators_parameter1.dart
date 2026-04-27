enum OrgsListOutsideCollaboratorsParameter1 {
  n2faDisabled._('2fa_disabled'),
  n2faInsecure._('2fa_insecure'),
  all._('all');

  const OrgsListOutsideCollaboratorsParameter1._(this.value);

  /// Creates a OrgsListOutsideCollaboratorsParameter1 from a json string.
  factory OrgsListOutsideCollaboratorsParameter1.fromJson(String json) {
    return OrgsListOutsideCollaboratorsParameter1.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown OrgsListOutsideCollaboratorsParameter1 value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static OrgsListOutsideCollaboratorsParameter1? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return OrgsListOutsideCollaboratorsParameter1.fromJson(json);
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
