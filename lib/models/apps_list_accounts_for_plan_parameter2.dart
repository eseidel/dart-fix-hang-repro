enum AppsListAccountsForPlanParameter2 {
  asc._('asc'),
  desc._('desc');

  const AppsListAccountsForPlanParameter2._(this.value);

  /// Creates a AppsListAccountsForPlanParameter2 from a json string.
  factory AppsListAccountsForPlanParameter2.fromJson(String json) {
    return AppsListAccountsForPlanParameter2.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown AppsListAccountsForPlanParameter2 value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static AppsListAccountsForPlanParameter2? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return AppsListAccountsForPlanParameter2.fromJson(json);
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
