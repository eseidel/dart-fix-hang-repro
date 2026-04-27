/// The merge method to use.
enum PullsMergeRequestMergeMethod {
  merge._('merge'),
  squash._('squash'),
  rebase._('rebase');

  const PullsMergeRequestMergeMethod._(this.value);

  /// Creates a PullsMergeRequestMergeMethod from a json string.
  factory PullsMergeRequestMergeMethod.fromJson(String json) {
    return PullsMergeRequestMergeMethod.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown PullsMergeRequestMergeMethod value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static PullsMergeRequestMergeMethod? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return PullsMergeRequestMergeMethod.fromJson(json);
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
