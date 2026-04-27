/// The geographic area for this codespace. If not specified, the value is
/// assigned by IP. This property replaces `location`, which is closing down.
enum CodespacesCreateWithPrForAuthenticatedUserRequestGeo {
  europeWest._('EuropeWest'),
  southeastAsia._('SoutheastAsia'),
  usEast._('UsEast'),
  usWest._('UsWest');

  const CodespacesCreateWithPrForAuthenticatedUserRequestGeo._(this.value);

  /// Creates a CodespacesCreateWithPrForAuthenticatedUserRequestGeo from a json string.
  factory CodespacesCreateWithPrForAuthenticatedUserRequestGeo.fromJson(
    String json,
  ) {
    return CodespacesCreateWithPrForAuthenticatedUserRequestGeo.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown CodespacesCreateWithPrForAuthenticatedUserRequestGeo value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodespacesCreateWithPrForAuthenticatedUserRequestGeo? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return CodespacesCreateWithPrForAuthenticatedUserRequestGeo.fromJson(json);
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
