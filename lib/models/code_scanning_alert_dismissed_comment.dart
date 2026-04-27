/// The dismissal comment associated with the dismissal of the alert.
extension type const CodeScanningAlertDismissedComment._(String value) {
  const CodeScanningAlertDismissedComment(this.value);

  factory CodeScanningAlertDismissedComment.fromJson(String json) =>
      CodeScanningAlertDismissedComment(json);

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeScanningAlertDismissedComment? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return CodeScanningAlertDismissedComment.fromJson(json);
  }

  String toJson() => value;
}
