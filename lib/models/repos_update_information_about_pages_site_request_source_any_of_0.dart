/// Update the source for the repository. Must include the branch name, and may
/// optionally specify the subdirectory `/docs`. Possible values are
/// `"gh-pages"`, `"master"`, and `"master /docs"`.
enum ReposUpdateInformationAboutPagesSiteRequestSourceAnyOf0 {
  ghPages._('gh-pages'),
  master._('master'),
  masterDocs._('master /docs');

  const ReposUpdateInformationAboutPagesSiteRequestSourceAnyOf0._(this.value);

  /// Creates a ReposUpdateInformationAboutPagesSiteRequestSourceAnyOf0 from a json string.
  factory ReposUpdateInformationAboutPagesSiteRequestSourceAnyOf0.fromJson(
    String json,
  ) {
    return ReposUpdateInformationAboutPagesSiteRequestSourceAnyOf0.values
        .firstWhere(
          (value) => value.value == json,
          orElse: () => throw FormatException(
            'Unknown ReposUpdateInformationAboutPagesSiteRequestSourceAnyOf0 value: $json',
          ),
        );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReposUpdateInformationAboutPagesSiteRequestSourceAnyOf0? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return ReposUpdateInformationAboutPagesSiteRequestSourceAnyOf0.fromJson(
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
