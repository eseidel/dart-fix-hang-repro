/// The SHA of the commit to which the analysis you are uploading relates.
extension type const CodeScanningAnalysisCommitSha._(String value) {
  const CodeScanningAnalysisCommitSha(this.value);

  factory CodeScanningAnalysisCommitSha.fromJson(String json) =>
      CodeScanningAnalysisCommitSha(json);

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeScanningAnalysisCommitSha? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CodeScanningAnalysisCommitSha.fromJson(json);
  }

  String toJson() => value;
}
