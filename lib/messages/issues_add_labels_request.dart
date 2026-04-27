sealed class IssuesAddLabelsRequest {
  static IssuesAddLabelsRequest fromJson(dynamic jsonArg) {
    // Determine which schema to use based on the json.
    // TODO(eseidel): Implement this.
    throw UnimplementedError('IssuesAddLabelsRequest.fromJson');
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static IssuesAddLabelsRequest? maybeFromJson(dynamic json) {
    if (json == null) {
      return null;
    }
    return IssuesAddLabelsRequest.fromJson(json);
  }

  /// Require all subclasses to implement toJson.
  dynamic toJson();
}
