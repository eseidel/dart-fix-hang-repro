enum ReposListCollaboratorsParameter3 {
  pull._('pull'),
  triage._('triage'),
  push._('push'),
  maintain._('maintain'),
  admin._('admin');

  const ReposListCollaboratorsParameter3._(this.value);

  /// Creates a ReposListCollaboratorsParameter3 from a json string.
  factory ReposListCollaboratorsParameter3.fromJson(String json) {
    return ReposListCollaboratorsParameter3.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown ReposListCollaboratorsParameter3 value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReposListCollaboratorsParameter3? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return ReposListCollaboratorsParameter3.fromJson(json);
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
