import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:github_out/api_client.dart';
import 'package:github_out/api_exception.dart';
import 'package:github_out/messages/campaigns_create_campaign_request.dart';
import 'package:github_out/messages/campaigns_update_campaign_request.dart';
import 'package:github_out/messages/service_unavailable_response.dart';
import 'package:github_out/models/basic_error.dart';
import 'package:github_out/models/campaign_state.dart';
import 'package:github_out/models/campaign_summary.dart';
import 'package:github_out/models/campaign_summary_alert_stats.dart';
import 'package:github_out/models/campaigns_create_campaign_request_code_scanning_alerts_inner.dart';
import 'package:github_out/models/campaigns_list_org_campaigns_parameter5.dart';
import 'package:github_out/models/direction_param.dart';
import 'package:github_out/models/simple_user.dart';
import 'package:github_out/models/team.dart';
import 'package:github_out/models/team_permissions.dart';
import 'package:github_out/models/team_simple.dart';
import 'package:http/http.dart' as http;

/// Endpoints to manage campaigns via the REST API.
class CampaignsApi {
  CampaignsApi(ApiClient? client) : client = client ?? ApiClient();

  final ApiClient client;

  /// List campaigns for an organization
  /// Lists campaigns in an organization.
  ///
  /// The authenticated user must be an owner or security manager for the
  /// organization to use this endpoint.
  ///
  /// OAuth app tokens and personal access tokens (classic) need the
  /// `security_events` scope to use this endpoint.
  Future<List<CampaignSummary>> listOrgCampaigns(
    String org, {
    int? page = 1,
    int? perPage = 30,
    DirectionParam? direction,
    CampaignState? state,
    CampaignsListOrgCampaignsParameter5? sort,
  }) async {
    final response = await client.invokeApi(
      method: Method.get,
      path: '/orgs/{org}/campaigns'.replaceAll('{org}', '${org}'),
      queryParameters: {
        if (page != null) 'page': [page.toString()],
        if (perPage != null) 'per_page': [perPage.toString()],
        if (direction != null) 'direction': [direction.toJson().toString()],
        if (state != null) 'state': [state.toJson().toString()],
        if (sort != null) 'sort': [sort.toJson().toString()],
      },
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }

    if (response.body.isNotEmpty) {
      return (jsonDecode(response.body) as List)
          .map<CampaignSummary>(
            (e) => CampaignSummary.fromJson(e as Map<String, dynamic>),
          )
          .toList();
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// Create a campaign for an organization
  /// Create a campaign for an organization.
  ///
  /// The authenticated user must be an owner or security manager for the
  /// organization to use this endpoint.
  ///
  /// OAuth app tokens and personal access tokens (classic) need the
  /// `security_events` scope to use this endpoint.
  ///
  /// Fine-grained tokens must have the "Code scanning alerts" repository
  /// permissions (read) on all repositories included
  /// in the campaign.
  Future<CampaignSummary> createCampaign(
    String org,
    CampaignsCreateCampaignRequest campaignsCreateCampaignRequest,
  ) async {
    final response = await client.invokeApi(
      method: Method.post,
      path: '/orgs/{org}/campaigns'.replaceAll('{org}', '${org}'),
      body: campaignsCreateCampaignRequest.toJson(),
      bodyContentType: BodyContentType.json,
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }

    if (response.body.isNotEmpty) {
      return CampaignSummary.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// Get a campaign for an organization
  /// Gets a campaign for an organization.
  ///
  /// The authenticated user must be an owner or security manager for the
  /// organization to use this endpoint.
  ///
  /// OAuth app tokens and personal access tokens (classic) need the
  /// `security_events` scope to use this endpoint.
  Future<CampaignSummary> getCampaignSummary(
    String org,
    int campaignNumber,
  ) async {
    final response = await client.invokeApi(
      method: Method.get,
      path: '/orgs/{org}/campaigns/{campaign_number}'
          .replaceAll('{org}', '${org}')
          .replaceAll('{campaign_number}', '${campaignNumber}'),
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }

    if (response.body.isNotEmpty) {
      return CampaignSummary.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// Delete a campaign for an organization
  /// Deletes a campaign in an organization.
  ///
  /// The authenticated user must be an owner or security manager for the
  /// organization to use this endpoint.
  ///
  /// OAuth app tokens and personal access tokens (classic) need the
  /// `security_events` scope to use this endpoint.
  Future<void> deleteCampaign(
    String org,
    int campaignNumber,
  ) async {
    final response = await client.invokeApi(
      method: Method.delete,
      path: '/orgs/{org}/campaigns/{campaign_number}'
          .replaceAll('{org}', '${org}')
          .replaceAll('{campaign_number}', '${campaignNumber}'),
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }
  }

  /// Update a campaign
  /// Updates a campaign in an organization.
  ///
  /// The authenticated user must be an owner or security manager for the
  /// organization to use this endpoint.
  ///
  /// OAuth app tokens and personal access tokens (classic) need the
  /// `security_events` scope to use this endpoint.
  Future<CampaignSummary> updateCampaign(
    String org,
    int campaignNumber,
    CampaignsUpdateCampaignRequest campaignsUpdateCampaignRequest,
  ) async {
    final response = await client.invokeApi(
      method: Method.patch,
      path: '/orgs/{org}/campaigns/{campaign_number}'
          .replaceAll('{org}', '${org}')
          .replaceAll('{campaign_number}', '${campaignNumber}'),
      body: campaignsUpdateCampaignRequest.toJson(),
      bodyContentType: BodyContentType.json,
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }

    if (response.body.isNotEmpty) {
      return CampaignSummary.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }
}
