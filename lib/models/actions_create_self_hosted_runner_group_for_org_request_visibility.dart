/// Visibility of a runner group. You can select all repositories, select
/// individual repositories, or limit access to private repositories.
enum ActionsCreateSelfHostedRunnerGroupForOrgRequestVisibility {
  selected._('selected'),
  all._('all'),
  private._('private');

  const ActionsCreateSelfHostedRunnerGroupForOrgRequestVisibility._(this.value);

  /// Creates a ActionsCreateSelfHostedRunnerGroupForOrgRequestVisibility from a json string.
  factory ActionsCreateSelfHostedRunnerGroupForOrgRequestVisibility.fromJson(
    String json,
  ) {
    return ActionsCreateSelfHostedRunnerGroupForOrgRequestVisibility.values
        .firstWhere(
          (value) => value.value == json,
          orElse: () => throw FormatException(
            'Unknown ActionsCreateSelfHostedRunnerGroupForOrgRequestVisibility value: $json',
          ),
        );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ActionsCreateSelfHostedRunnerGroupForOrgRequestVisibility?
  maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return ActionsCreateSelfHostedRunnerGroupForOrgRequestVisibility.fromJson(
      json,
    );
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
