enum OrgsListPendingInvitationsParameter3 {
  all._('all'),
  admin._('admin'),
  directMember._('direct_member'),
  billingManager._('billing_manager'),
  hiringManager._('hiring_manager');

  const OrgsListPendingInvitationsParameter3._(this.value);

  /// Creates a OrgsListPendingInvitationsParameter3 from a json string.
  factory OrgsListPendingInvitationsParameter3.fromJson(String json) {
    return OrgsListPendingInvitationsParameter3.values.firstWhere(
      (value) => value.value == json,
      orElse: () => throw FormatException(
        'Unknown OrgsListPendingInvitationsParameter3 value: $json',
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static OrgsListPendingInvitationsParameter3? maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return OrgsListPendingInvitationsParameter3.fromJson(json);
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
