import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

/// {@template network_settings}
/// Hosted compute network settings resource
/// A hosted compute network settings resource.
/// {@endtemplate}
@immutable
class NetworkSettings {
  /// {@macro network_settings}
  NetworkSettings({
    required this.id,
    this.networkConfigurationId,
    required this.name,
    required this.subnetId,
    required this.region,
  });

  /// Converts a `Map<String, dynamic>` to a [NetworkSettings].
  factory NetworkSettings.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'NetworkSettings',
      json,
      () => NetworkSettings(
        id: json['id'] as String,
        networkConfigurationId: json['network_configuration_id'] as String?,
        name: json['name'] as String,
        subnetId: json['subnet_id'] as String,
        region: json['region'] as String,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static NetworkSettings? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return NetworkSettings.fromJson(json);
  }

  /// The unique identifier of the network settings resource.
  /// example: `'220F78DACB92BBFBC5E6F22DE1CCF52309D'`
  final String id;

  /// The identifier of the network configuration that is using this settings
  /// resource.
  /// example: `'934E208B3EE0BD60CF5F752C426BFB53562'`
  final String? networkConfigurationId;

  /// The name of the network settings resource.
  /// example: `'my-network-settings'`
  final String name;

  /// The subnet this network settings resource is configured for.
  /// example:
  /// `'/subscriptions/14839728-3ad9-43ab-bd2b-fa6ad0f75e2a/resourceGroups/my-rg/providers/Microsoft.Network/virtualNetworks/my-vnet/subnets/my-subnet'`
  final String subnetId;

  /// The location of the subnet this network settings resource is configured
  /// for.
  /// example: `'eastus'`
  final String region;

  /// Converts a [NetworkSettings] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'network_configuration_id': networkConfigurationId,
      'name': name,
      'subnet_id': subnetId,
      'region': region,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    networkConfigurationId,
    name,
    subnetId,
    region,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is NetworkSettings &&
        this.id == other.id &&
        this.networkConfigurationId == other.networkConfigurationId &&
        this.name == other.name &&
        this.subnetId == other.subnetId &&
        this.region == other.region;
  }
}
