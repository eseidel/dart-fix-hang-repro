/// Who can edit the values of the property
/// example: `'org_actors'`
enum CustomPropertyValuesEditableBy {
  orgActors._('org_actors'),
  orgAndRepoActors._('org_and_repo_actors');

  const CustomPropertyValuesEditableBy._(this.value);

  /// Creates a CustomPropertyValuesEditableBy from a json string.
  factory CustomPropertyValuesEditableBy.fromJson(String json) {
    return CustomPropertyValuesEditableBy.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown CustomPropertyValuesEditableBy value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CustomPropertyValuesEditableBy? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CustomPropertyValuesEditableBy.fromJson(json);
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
