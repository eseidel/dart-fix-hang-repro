/// example: `'private'`
enum PackageVisibility {
  private._('private'),
  public._('public');

  const PackageVisibility._(this.value);

  /// Creates a PackageVisibility from a json string.
  factory PackageVisibility.fromJson(String json) {
    return PackageVisibility.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown PackageVisibility value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static PackageVisibility? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return PackageVisibility.fromJson(json);
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
