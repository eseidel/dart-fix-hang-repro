/// example: `'added'`
enum DiffEntryStatus {
  added._('added'),
  removed._('removed'),
  modified._('modified'),
  renamed._('renamed'),
  copied._('copied'),
  changed._('changed'),
  unchanged._('unchanged');

  const DiffEntryStatus._(this.value);

  /// Creates a DiffEntryStatus from a json string.
  factory DiffEntryStatus.fromJson(String json) {
    return DiffEntryStatus.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown DiffEntryStatus value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static DiffEntryStatus? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return DiffEntryStatus.fromJson(json);
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
