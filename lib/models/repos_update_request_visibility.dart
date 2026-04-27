/// The visibility of the repository.
enum ReposUpdateRequestVisibility {
  public._('public'),
  private._('private');

  const ReposUpdateRequestVisibility._(this.value);

  /// Creates a ReposUpdateRequestVisibility from a json string.
  factory ReposUpdateRequestVisibility.fromJson(String json) {
    return ReposUpdateRequestVisibility.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown ReposUpdateRequestVisibility value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReposUpdateRequestVisibility? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return ReposUpdateRequestVisibility.fromJson(json);
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
