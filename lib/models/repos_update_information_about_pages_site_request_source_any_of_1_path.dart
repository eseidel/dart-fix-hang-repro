// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
/// The repository directory that includes the source files for the Pages site.
/// Allowed paths are `/` or `/docs`.
enum ReposUpdateInformationAboutPagesSiteRequestSourceAnyOf1Path {
  a._('/'),
  docs._('/docs');

  const ReposUpdateInformationAboutPagesSiteRequestSourceAnyOf1Path._(
    this.value,
  );

  /// Creates a ReposUpdateInformationAboutPagesSiteRequestSourceAnyOf1Path from a json string.
  factory ReposUpdateInformationAboutPagesSiteRequestSourceAnyOf1Path.fromJson(
    String json,
  ) {
    return ReposUpdateInformationAboutPagesSiteRequestSourceAnyOf1Path.values
        .firstWhere(
          (value) => value.value == json,
          orElse: () => throw FormatException(
            'Unknown ReposUpdateInformationAboutPagesSiteRequestSourceAnyOf1Path value: $json',
          ),
        );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReposUpdateInformationAboutPagesSiteRequestSourceAnyOf1Path?
  maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return ReposUpdateInformationAboutPagesSiteRequestSourceAnyOf1Path.fromJson(
      json,
    );
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
