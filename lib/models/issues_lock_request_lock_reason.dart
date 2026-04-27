/// The reason for locking the issue or pull request conversation. Lock will
/// fail if you don't use one of these reasons:
///  * `off-topic`
///  * `too heated`
///  * `resolved`
///  * `spam`
enum IssuesLockRequestLockReason {
  offTopic._('off-topic'),
  tooHeated._('too heated'),
  resolved._('resolved'),
  spam._('spam');

  const IssuesLockRequestLockReason._(this.value);

  /// Creates a IssuesLockRequestLockReason from a json string.
  factory IssuesLockRequestLockReason.fromJson(String json) {
    return IssuesLockRequestLockReason.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown IssuesLockRequestLockReason value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static IssuesLockRequestLockReason? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return IssuesLockRequestLockReason.fromJson(json);
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
