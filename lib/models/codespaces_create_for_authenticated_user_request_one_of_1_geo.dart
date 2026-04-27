/// The geographic area for this codespace. If not specified, the value is
/// assigned by IP. This property replaces `location`, which is closing down.
enum CodespacesCreateForAuthenticatedUserRequestOneOf1Geo {
  europeWest._('EuropeWest'),
  southeastAsia._('SoutheastAsia'),
  usEast._('UsEast'),
  usWest._('UsWest');

  const CodespacesCreateForAuthenticatedUserRequestOneOf1Geo._(this.value);

  /// Creates a CodespacesCreateForAuthenticatedUserRequestOneOf1Geo from a json string.
  factory CodespacesCreateForAuthenticatedUserRequestOneOf1Geo.fromJson(
    String json,
  ) {
    return CodespacesCreateForAuthenticatedUserRequestOneOf1Geo.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown CodespacesCreateForAuthenticatedUserRequestOneOf1Geo value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodespacesCreateForAuthenticatedUserRequestOneOf1Geo? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return CodespacesCreateForAuthenticatedUserRequestOneOf1Geo.fromJson(json);
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
