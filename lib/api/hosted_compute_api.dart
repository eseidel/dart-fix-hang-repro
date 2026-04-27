import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:github_out/api_client.dart';
import 'package:github_out/api_exception.dart';
import 'package:github_out/messages/hosted_compute_create_network_configuration_for_org_request.dart';
import 'package:github_out/messages/hosted_compute_list_network_configurations_for_org200_response.dart';
import 'package:github_out/messages/hosted_compute_update_network_configuration_for_org_request.dart';
import 'package:github_out/models/hosted_compute_create_network_configuration_for_org_request_compute_service.dart';
import 'package:github_out/models/hosted_compute_update_network_configuration_for_org_request_compute_service.dart';
import 'package:github_out/models/network_configuration.dart';
import 'package:github_out/models/network_configuration_compute_service.dart';
import 'package:github_out/models/network_settings.dart';
import 'package:http/http.dart' as http;

/// Manage hosted compute networking resources.
class HostedComputeApi {
  HostedComputeApi(ApiClient? client) : client = client ?? ApiClient();

  final ApiClient client;

  /// List hosted compute network configurations for an organization
  /// Lists all hosted compute network configurations configured in an
  /// organization.
  ///
  /// OAuth app tokens and personal access tokens (classic) need the
  /// `read:network_configurations` scope to use this endpoint.
  Future<HostedComputeListNetworkConfigurationsForOrg200Response>
  hostedComputeListNetworkConfigurationsForOrg(
    String org, {
    int? perPage = 30,
    int? page = 1,
  }) async {
    final response = await client.invokeApi(
      method: Method.get,
      path: '/orgs/{org}/settings/network-configurations'.replaceAll(
        '{org}',
        '${org}',
      ),
      queryParameters: {
        if (perPage != null) 'per_page': [perPage.toString()],
        if (page != null) 'page': [page.toString()],
      },
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }

    if (response.body.isNotEmpty) {
      return HostedComputeListNetworkConfigurationsForOrg200Response.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// Create a hosted compute network configuration for an organization
  /// Creates a hosted compute network configuration for an organization.
  ///
  /// OAuth app tokens and personal access tokens (classic) need the
  /// `write:network_configurations` scope to use this endpoint.
  Future<NetworkConfiguration> hostedComputeCreateNetworkConfigurationForOrg(
    String org,
    HostedComputeCreateNetworkConfigurationForOrgRequest
    hostedComputeCreateNetworkConfigurationForOrgRequest,
  ) async {
    final response = await client.invokeApi(
      method: Method.post,
      path: '/orgs/{org}/settings/network-configurations'.replaceAll(
        '{org}',
        '${org}',
      ),
      body: hostedComputeCreateNetworkConfigurationForOrgRequest.toJson(),
      bodyContentType: BodyContentType.json,
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }

    if (response.body.isNotEmpty) {
      return NetworkConfiguration.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// Get a hosted compute network configuration for an organization
  /// Gets a hosted compute network configuration configured in an
  /// organization.
  ///
  /// OAuth app tokens and personal access tokens (classic) need the
  /// `read:network_configurations` scope to use this endpoint.
  Future<NetworkConfiguration> hostedComputeGetNetworkConfigurationForOrg(
    String org,
    String networkConfigurationId,
  ) async {
    final response = await client.invokeApi(
      method: Method.get,
      path:
          '/orgs/{org}/settings/network-configurations/{network_configuration_id}'
              .replaceAll('{org}', '${org}')
              .replaceAll(
                '{network_configuration_id}',
                '${networkConfigurationId}',
              ),
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }

    if (response.body.isNotEmpty) {
      return NetworkConfiguration.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// Delete a hosted compute network configuration from an organization
  /// Deletes a hosted compute network configuration from an organization.
  ///
  /// OAuth app tokens and personal access tokens (classic) need the
  /// `write:network_configurations` scope to use this endpoint.
  Future<void> hostedComputeDeleteNetworkConfigurationFromOrg(
    String org,
    String networkConfigurationId,
  ) async {
    final response = await client.invokeApi(
      method: Method.delete,
      path:
          '/orgs/{org}/settings/network-configurations/{network_configuration_id}'
              .replaceAll('{org}', '${org}')
              .replaceAll(
                '{network_configuration_id}',
                '${networkConfigurationId}',
              ),
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }
  }

  /// Update a hosted compute network configuration for an organization
  /// Updates a hosted compute network configuration for an organization.
  ///
  /// OAuth app tokens and personal access tokens (classic) need the
  /// `write:network_configurations` scope to use this endpoint.
  Future<NetworkConfiguration> hostedComputeUpdateNetworkConfigurationForOrg(
    String org,
    String networkConfigurationId,
    HostedComputeUpdateNetworkConfigurationForOrgRequest
    hostedComputeUpdateNetworkConfigurationForOrgRequest,
  ) async {
    final response = await client.invokeApi(
      method: Method.patch,
      path:
          '/orgs/{org}/settings/network-configurations/{network_configuration_id}'
              .replaceAll('{org}', '${org}')
              .replaceAll(
                '{network_configuration_id}',
                '${networkConfigurationId}',
              ),
      body: hostedComputeUpdateNetworkConfigurationForOrgRequest.toJson(),
      bodyContentType: BodyContentType.json,
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }

    if (response.body.isNotEmpty) {
      return NetworkConfiguration.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// Get a hosted compute network settings resource for an organization
  /// Gets a hosted compute network settings resource configured for an
  /// organization.
  ///
  /// OAuth app tokens and personal access tokens (classic) need the
  /// `read:network_configurations` scope to use this endpoint.
  Future<NetworkSettings> hostedComputeGetNetworkSettingsForOrg(
    String org,
    String networkSettingsId,
  ) async {
    final response = await client.invokeApi(
      method: Method.get,
      path: '/orgs/{org}/settings/network-settings/{network_settings_id}'
          .replaceAll('{org}', '${org}')
          .replaceAll('{network_settings_id}', '${networkSettingsId}'),
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }

    if (response.body.isNotEmpty) {
      return NetworkSettings.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }
}
