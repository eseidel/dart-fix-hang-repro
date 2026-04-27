sealed class ActivityListStargazersForRepo200Response {
  static ActivityListStargazersForRepo200Response fromJson(dynamic jsonArg) {
    // Determine which schema to use based on the json.
    // TODO(eseidel): Implement this.
    throw UnimplementedError(
      'ActivityListStargazersForRepo200Response.fromJson',
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ActivityListStargazersForRepo200Response? maybeFromJson(dynamic json) {
    if (json == null) {
      return null;
    }
    return ActivityListStargazersForRepo200Response.fromJson(json);
  }

  /// Require all subclasses to implement toJson.
  dynamic toJson();
}
