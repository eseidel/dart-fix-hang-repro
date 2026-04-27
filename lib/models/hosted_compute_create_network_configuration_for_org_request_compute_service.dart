/// The hosted compute service to use for the network configuration.
enum HostedComputeCreateNetworkConfigurationForOrgRequestComputeService {
  none._('none'),
  actions._('actions');

  const HostedComputeCreateNetworkConfigurationForOrgRequestComputeService._(
    this.value,
  );

  /// Creates a HostedComputeCreateNetworkConfigurationForOrgRequestComputeService from a json string.
  factory HostedComputeCreateNetworkConfigurationForOrgRequestComputeService.fromJson(
    String json,
  ) {
    return HostedComputeCreateNetworkConfigurationForOrgRequestComputeService
        .values
        .firstWhere(
          (value) => value.value == json,
          orElse: () => throw FormatException(
            'Unknown HostedComputeCreateNetworkConfigurationForOrgRequestComputeService value: $json',
          ),
        );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static HostedComputeCreateNetworkConfigurationForOrgRequestComputeService?
  maybeFromJson(String? json) {
    if (json == null) {
      return null;
    }
    return HostedComputeCreateNetworkConfigurationForOrgRequestComputeService.fromJson(
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
