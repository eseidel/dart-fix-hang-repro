/// The hosted compute service to use for the network configuration.
enum HostedComputeUpdateNetworkConfigurationForOrgRequestComputeService {
  none._('none'),
  actions._('actions');

  const HostedComputeUpdateNetworkConfigurationForOrgRequestComputeService._(
    this.value,
  );

  /// Creates a HostedComputeUpdateNetworkConfigurationForOrgRequestComputeService from a json string.
  factory HostedComputeUpdateNetworkConfigurationForOrgRequestComputeService.fromJson(
    String json,
  ) {
    return HostedComputeUpdateNetworkConfigurationForOrgRequestComputeService
        .values
        .firstWhere(
          (value) => value.value == json,
          orElse: () => throw FormatException(
            'Unknown HostedComputeUpdateNetworkConfigurationForOrgRequestComputeService value: $json',
          ),
        );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static HostedComputeUpdateNetworkConfigurationForOrgRequestComputeService?
  maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return HostedComputeUpdateNetworkConfigurationForOrgRequestComputeService.fromJson(
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
