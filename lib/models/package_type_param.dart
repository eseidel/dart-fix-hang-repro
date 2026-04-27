enum PackageTypeParam {
  npm._('npm'),
  maven._('maven'),
  rubygems._('rubygems'),
  docker._('docker'),
  nuget._('nuget'),
  container._('container');

  const PackageTypeParam._(this.value);

  /// Creates a PackageTypeParam from a json string.
  factory PackageTypeParam.fromJson(String json) {
    return PackageTypeParam.values.firstWhere(
      (value) => value.value == json,
      orElse: () =>
          throw FormatException('Unknown PackageTypeParam value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static PackageTypeParam? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return PackageTypeParam.fromJson(json);
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
