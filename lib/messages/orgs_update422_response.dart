sealed class OrgsUpdate422Response {
  static OrgsUpdate422Response fromJson(dynamic jsonArg) {
    // Determine which schema to use based on the json.
    // TODO(eseidel): Implement this.
    throw UnimplementedError('OrgsUpdate422Response.fromJson');
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static OrgsUpdate422Response? maybeFromJson(dynamic json) {
    if (json == null) {
      return null;
    }
    return OrgsUpdate422Response.fromJson(json);
  }

  /// Require all subclasses to implement toJson.
  dynamic toJson();
}
