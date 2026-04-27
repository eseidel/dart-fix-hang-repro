/// example: `'docker'`
enum PackagePackageType {
  npm._('npm'),
  maven._('maven'),
  rubygems._('rubygems'),
  docker._('docker'),
  nuget._('nuget'),
  container._('container');

  const PackagePackageType._(this.value);

  /// Creates a PackagePackageType from a json string.
  factory PackagePackageType.fromJson(String json) {
    return PackagePackageType.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown PackagePackageType value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static PackagePackageType? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return PackagePackageType.fromJson(json);
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
