// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
/// Whether to approve or reject deployment to the specified environments.
/// example: `'approved'`
enum ActionsReviewPendingDeploymentsForRunRequestState {
  approved._('approved'),
  rejected._('rejected');

  const ActionsReviewPendingDeploymentsForRunRequestState._(this.value);

  /// Creates a ActionsReviewPendingDeploymentsForRunRequestState from a json string.
  factory ActionsReviewPendingDeploymentsForRunRequestState.fromJson(
    String json,
  ) {
    return ActionsReviewPendingDeploymentsForRunRequestState.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown ActionsReviewPendingDeploymentsForRunRequestState value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ActionsReviewPendingDeploymentsForRunRequestState? maybeFromJson(
    String? json,
  ) {
    if (json == null) {
      return null;
    }
    return ActionsReviewPendingDeploymentsForRunRequestState.fromJson(json);
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
