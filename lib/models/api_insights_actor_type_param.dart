enum ApiInsightsActorTypeParam {
  installation._('installation'),
  classicPat._('classic_pat'),
  fineGrainedPat._('fine_grained_pat'),
  oauthApp._('oauth_app'),
  githubAppUserToServer._('github_app_user_to_server');

  const ApiInsightsActorTypeParam._(this.value);

  /// Creates a ApiInsightsActorTypeParam from a json string.
  factory ApiInsightsActorTypeParam.fromJson(String json) {
    return ApiInsightsActorTypeParam.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown ApiInsightsActorTypeParam value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ApiInsightsActorTypeParam? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return ApiInsightsActorTypeParam.fromJson(json);
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
