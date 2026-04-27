/// Campaign state
/// Indicates whether a campaign is open or closed
enum CampaignState {
  open._('open'),
  closed._('closed');

  const CampaignState._(this.value);

  /// Creates a CampaignState from a json string.
  factory CampaignState.fromJson(String json) {
    return CampaignState.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException('Unknown CampaignState value: $json'),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CampaignState? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CampaignState.fromJson(json);
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
