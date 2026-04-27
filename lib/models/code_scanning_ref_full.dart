/// The full Git reference, formatted as `refs/heads/<branch name>`,
/// `refs/tags/<tag>`, `refs/pull/<number>/merge`, or `refs/pull/<number>/head`.
/// example: `'refs/heads/main'`
extension type const CodeScanningRefFull._(String value) {
  const CodeScanningRefFull(this.value);

  factory CodeScanningRefFull.fromJson(String json) =>
      CodeScanningRefFull(json);

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeScanningRefFull? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CodeScanningRefFull.fromJson(json);
  }

  String toJson() => value;
}
