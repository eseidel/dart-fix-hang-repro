/// The geographic area for this codespace. If not specified, the value is
/// assigned by IP. This property replaces `location`, which is closing down.
enum CodespacesCreateForAuthenticatedUserRequestOneOf0Geo {
  europeWest._('EuropeWest'),
  southeastAsia._('SoutheastAsia'),
  usEast._('UsEast'),
  usWest._('UsWest');

  const CodespacesCreateForAuthenticatedUserRequestOneOf0Geo._(this.value);

  /// Creates a CodespacesCreateForAuthenticatedUserRequestOneOf0Geo from a json string.
  factory CodespacesCreateForAuthenticatedUserRequestOneOf0Geo.fromJson(
    String json,
  ) {
    return CodespacesCreateForAuthenticatedUserRequestOneOf0Geo.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown CodespacesCreateForAuthenticatedUserRequestOneOf0Geo value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodespacesCreateForAuthenticatedUserRequestOneOf0Geo? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return CodespacesCreateForAuthenticatedUserRequestOneOf0Geo.fromJson(json);
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
