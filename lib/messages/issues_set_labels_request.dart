sealed class IssuesSetLabelsRequest {
  static IssuesSetLabelsRequest fromJson(dynamic jsonArg) {
    // Determine which schema to use based on the json.
    // TODO(eseidel): Implement this.
    throw UnimplementedError('IssuesSetLabelsRequest.fromJson');
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static IssuesSetLabelsRequest? maybeFromJson(dynamic json) {
    if (json == null) {
      return null;
    }
    return IssuesSetLabelsRequest.fromJson(json);
  }

  /// Require all subclasses to implement toJson.
  dynamic toJson();
}
