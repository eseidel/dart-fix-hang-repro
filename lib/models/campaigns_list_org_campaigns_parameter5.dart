enum CampaignsListOrgCampaignsParameter5 {
  created._('created'),
  updated._('updated'),
  endsAt._('ends_at'),
  published._('published');

  const CampaignsListOrgCampaignsParameter5._(this.value);

  /// Creates a CampaignsListOrgCampaignsParameter5 from a json string.
  factory CampaignsListOrgCampaignsParameter5.fromJson(String json) {
    return CampaignsListOrgCampaignsParameter5.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown CampaignsListOrgCampaignsParameter5 value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CampaignsListOrgCampaignsParameter5? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CampaignsListOrgCampaignsParameter5.fromJson(json);
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
