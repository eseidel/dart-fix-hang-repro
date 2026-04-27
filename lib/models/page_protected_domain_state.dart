/// The state if the domain is verified
/// example: `'pending'`
enum PageProtectedDomainState {
  pending._('pending'),
  verified._('verified'),
  unverified._('unverified');

  const PageProtectedDomainState._(this.value);

  /// Creates a PageProtectedDomainState from a json string.
  factory PageProtectedDomainState.fromJson(String json) {
    return PageProtectedDomainState.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown PageProtectedDomainState value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static PageProtectedDomainState? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return PageProtectedDomainState.fromJson(json);
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
