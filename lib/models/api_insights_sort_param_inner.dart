enum ApiInsightsSortParamInner {
  lastRateLimitedTimestamp._('last_rate_limited_timestamp'),
  lastRequestTimestamp._('last_request_timestamp'),
  rateLimitedRequestCount._('rate_limited_request_count'),
  subjectName._('subject_name'),
  totalRequestCount._('total_request_count');

  const ApiInsightsSortParamInner._(this.value);

  /// Creates a ApiInsightsSortParamInner from a json string.
  factory ApiInsightsSortParamInner.fromJson(String json) {
    return ApiInsightsSortParamInner.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown ApiInsightsSortParamInner value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ApiInsightsSortParamInner? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return ApiInsightsSortParamInner.fromJson(json);
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
