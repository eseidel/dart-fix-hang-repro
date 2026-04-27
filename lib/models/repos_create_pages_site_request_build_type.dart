/// The process in which the Page will be built. Possible values are `"legacy"`
/// and `"workflow"`.
enum ReposCreatePagesSiteRequestBuildType {
  legacy._('legacy'),
  workflow._('workflow');

  const ReposCreatePagesSiteRequestBuildType._(this.value);

  /// Creates a ReposCreatePagesSiteRequestBuildType from a json string.
  factory ReposCreatePagesSiteRequestBuildType.fromJson(String json) {
    return ReposCreatePagesSiteRequestBuildType.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown ReposCreatePagesSiteRequestBuildType value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReposCreatePagesSiteRequestBuildType? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return ReposCreatePagesSiteRequestBuildType.fromJson(json);
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
