/// Default permission level members have for organization repositories.
enum OrgsUpdateRequestDefaultRepositoryPermission {
  read._('read'),
  write._('write'),
  admin._('admin'),
  none._('none');

  const OrgsUpdateRequestDefaultRepositoryPermission._(this.value);

  /// Creates a OrgsUpdateRequestDefaultRepositoryPermission from a json string.
  factory OrgsUpdateRequestDefaultRepositoryPermission.fromJson(String json) {
    return OrgsUpdateRequestDefaultRepositoryPermission.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown OrgsUpdateRequestDefaultRepositoryPermission value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static OrgsUpdateRequestDefaultRepositoryPermission? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return OrgsUpdateRequestDefaultRepositoryPermission.fromJson(json);
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
