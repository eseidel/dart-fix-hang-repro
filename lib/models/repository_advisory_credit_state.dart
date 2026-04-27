/// The state of the user's acceptance of the credit.
enum RepositoryAdvisoryCreditState {
  accepted._('accepted'),
  declined._('declined'),
  pending._('pending');

  const RepositoryAdvisoryCreditState._(this.value);

  /// Creates a RepositoryAdvisoryCreditState from a json string.
  factory RepositoryAdvisoryCreditState.fromJson(String json) {
    return RepositoryAdvisoryCreditState.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown RepositoryAdvisoryCreditState value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryAdvisoryCreditState? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return RepositoryAdvisoryCreditState.fromJson(json);
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
