/// Color for the issue type.
enum OrganizationCreateIssueTypeColor {
  gray._('gray'),
  blue._('blue'),
  green._('green'),
  yellow._('yellow'),
  orange._('orange'),
  red._('red'),
  pink._('pink'),
  purple._('purple');

  const OrganizationCreateIssueTypeColor._(this.value);

  /// Creates a OrganizationCreateIssueTypeColor from a json string.
  factory OrganizationCreateIssueTypeColor.fromJson(String json) {
    return OrganizationCreateIssueTypeColor.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown OrganizationCreateIssueTypeColor value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static OrganizationCreateIssueTypeColor? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return OrganizationCreateIssueTypeColor.fromJson(json);
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
