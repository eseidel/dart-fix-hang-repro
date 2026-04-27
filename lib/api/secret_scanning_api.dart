import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:github_out/api_client.dart';
import 'package:github_out/api_exception.dart';
import 'package:github_out/messages/secret_scanning_create_push_protection_bypass_request.dart';
import 'package:github_out/messages/secret_scanning_update_alert_request.dart';
import 'package:github_out/messages/service_unavailable_response.dart';
import 'package:github_out/models/alert_created_at.dart';
import 'package:github_out/models/alert_html_url.dart';
import 'package:github_out/models/alert_number.dart';
import 'package:github_out/models/alert_updated_at.dart';
import 'package:github_out/models/alert_url.dart';
import 'package:github_out/models/basic_error.dart';
import 'package:github_out/models/direction_param.dart';
import 'package:github_out/models/organization_secret_scanning_alert.dart';
import 'package:github_out/models/organization_secret_scanning_alert_validity.dart';
import 'package:github_out/models/secret_scanning_alert.dart';
import 'package:github_out/models/secret_scanning_alert_resolution.dart';
import 'package:github_out/models/secret_scanning_alert_resolution_comment.dart';
import 'package:github_out/models/secret_scanning_alert_sort_param.dart';
import 'package:github_out/models/secret_scanning_alert_state.dart';
import 'package:github_out/models/secret_scanning_alert_state_param.dart';
import 'package:github_out/models/secret_scanning_alert_validity.dart';
import 'package:github_out/models/secret_scanning_first_detected_location.dart';
import 'package:github_out/models/secret_scanning_location.dart';
import 'package:github_out/models/secret_scanning_location_commit.dart';
import 'package:github_out/models/secret_scanning_location_details.dart';
import 'package:github_out/models/secret_scanning_location_discussion_body.dart';
import 'package:github_out/models/secret_scanning_location_discussion_comment.dart';
import 'package:github_out/models/secret_scanning_location_discussion_title.dart';
import 'package:github_out/models/secret_scanning_location_issue_body.dart';
import 'package:github_out/models/secret_scanning_location_issue_comment.dart';
import 'package:github_out/models/secret_scanning_location_issue_title.dart';
import 'package:github_out/models/secret_scanning_location_pull_request_body.dart';
import 'package:github_out/models/secret_scanning_location_pull_request_comment.dart';
import 'package:github_out/models/secret_scanning_location_pull_request_review.dart';
import 'package:github_out/models/secret_scanning_location_pull_request_review_comment.dart';
import 'package:github_out/models/secret_scanning_location_pull_request_title.dart';
import 'package:github_out/models/secret_scanning_location_type.dart';
import 'package:github_out/models/secret_scanning_location_wiki_commit.dart';
import 'package:github_out/models/secret_scanning_push_protection_bypass.dart';
import 'package:github_out/models/secret_scanning_push_protection_bypass_placeholder_id.dart';
import 'package:github_out/models/secret_scanning_push_protection_bypass_reason.dart';
import 'package:github_out/models/secret_scanning_scan.dart';
import 'package:github_out/models/secret_scanning_scan_history.dart';
import 'package:github_out/models/secret_scanning_scan_history_custom_pattern_backfill_scans_inner.dart';
import 'package:github_out/models/simple_repository.dart';
import 'package:github_out/models/simple_user.dart';
import 'package:http/http.dart' as http;

/// Retrieve secret scanning alerts from a repository.
class SecretScanningApi {
  SecretScanningApi(ApiClient? client) : client = client ?? ApiClient();

  final ApiClient client;

  /// List secret scanning alerts for an enterprise
  /// Lists secret scanning alerts for eligible repositories in an enterprise,
  /// from newest to oldest.
  ///
  /// Alerts are only returned for organizations in the enterprise for which
  /// the authenticated user is an organization owner or a [security
  /// manager](https://docs.github.com/organizations/managing-peoples-access-to-your-organization-with-roles/managing-security-managers-in-your-organization).
  ///
  /// The authenticated user must be a member of the enterprise in order to
  /// use this endpoint.
  ///
  /// OAuth app tokens and personal access tokens (classic) need the `repo`
  /// scope or `security_events` scope to use this endpoint.
  Future<List<OrganizationSecretScanningAlert>>
  secretScanningListAlertsForEnterprise(
    String enterprise, {
    SecretScanningAlertStateParam? state,
    String? secretType,
    String? resolution,
    SecretScanningAlertSortParam? sort,
    DirectionParam? direction,
    int? perPage = 30,
    String? before,
    String? after,
    String? validity,
    bool? isPubliclyLeaked = false,
    bool? isMultiRepo = false,
    bool? hideSecret = false,
  }) async {
    final response = await client.invokeApi(
      method: Method.get,
      path: '/enterprises/{enterprise}/secret-scanning/alerts'.replaceAll(
        '{enterprise}',
        '${enterprise}',
      ),
      queryParameters: {
        if (state != null) 'state': [state.toJson().toString()],
        if (secretType != null) 'secret_type': [secretType.toString()],
        if (resolution != null) 'resolution': [resolution.toString()],
        if (sort != null) 'sort': [sort.toJson().toString()],
        if (direction != null) 'direction': [direction.toJson().toString()],
        if (perPage != null) 'per_page': [perPage.toString()],
        if (before != null) 'before': [before.toString()],
        if (after != null) 'after': [after.toString()],
        if (validity != null) 'validity': [validity.toString()],
        if (isPubliclyLeaked != null)
          'is_publicly_leaked': [isPubliclyLeaked.toString()],
        if (isMultiRepo != null) 'is_multi_repo': [isMultiRepo.toString()],
        if (hideSecret != null) 'hide_secret': [hideSecret.toString()],
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
          .map<OrganizationSecretScanningAlert>(
            (e) => OrganizationSecretScanningAlert.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList();
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// List secret scanning alerts for an organization
  /// Lists secret scanning alerts for eligible repositories in an
  /// organization, from newest to oldest.
  ///
  /// The authenticated user must be an administrator or security manager for
  /// the organization to use this endpoint.
  ///
  /// OAuth app tokens and personal access tokens (classic) need the `repo` or
  /// `security_events` scope to use this endpoint. If this endpoint is only
  /// used with public repositories, the token can use the `public_repo` scope
  /// instead.
  Future<List<OrganizationSecretScanningAlert>> secretScanningListAlertsForOrg(
    String org, {
    SecretScanningAlertStateParam? state,
    String? secretType,
    String? resolution,
    SecretScanningAlertSortParam? sort,
    DirectionParam? direction,
    int? page = 1,
    int? perPage = 30,
    String? before,
    String? after,
    String? validity,
    bool? isPubliclyLeaked = false,
    bool? isMultiRepo = false,
    bool? hideSecret = false,
  }) async {
    final response = await client.invokeApi(
      method: Method.get,
      path: '/orgs/{org}/secret-scanning/alerts'.replaceAll('{org}', '${org}'),
      queryParameters: {
        if (state != null) 'state': [state.toJson().toString()],
        if (secretType != null) 'secret_type': [secretType.toString()],
        if (resolution != null) 'resolution': [resolution.toString()],
        if (sort != null) 'sort': [sort.toJson().toString()],
        if (direction != null) 'direction': [direction.toJson().toString()],
        if (page != null) 'page': [page.toString()],
        if (perPage != null) 'per_page': [perPage.toString()],
        if (before != null) 'before': [before.toString()],
        if (after != null) 'after': [after.toString()],
        if (validity != null) 'validity': [validity.toString()],
        if (isPubliclyLeaked != null)
          'is_publicly_leaked': [isPubliclyLeaked.toString()],
        if (isMultiRepo != null) 'is_multi_repo': [isMultiRepo.toString()],
        if (hideSecret != null) 'hide_secret': [hideSecret.toString()],
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
          .map<OrganizationSecretScanningAlert>(
            (e) => OrganizationSecretScanningAlert.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList();
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// List secret scanning alerts for a repository
  /// Lists secret scanning alerts for an eligible repository, from newest to
  /// oldest.
  ///
  /// The authenticated user must be an administrator for the repository or
  /// for the organization that owns the repository to use this endpoint.
  ///
  /// OAuth app tokens and personal access tokens (classic) need the `repo` or
  /// `security_events` scope to use this endpoint. If this endpoint is only
  /// used with public repositories, the token can use the `public_repo` scope
  /// instead.
  Future<List<SecretScanningAlert>> secretScanningListAlertsForRepo(
    String owner,
    String repo, {
    SecretScanningAlertStateParam? state,
    String? secretType,
    String? resolution,
    SecretScanningAlertSortParam? sort,
    DirectionParam? direction,
    int? page = 1,
    int? perPage = 30,
    String? before,
    String? after,
    String? validity,
    bool? isPubliclyLeaked = false,
    bool? isMultiRepo = false,
    bool? hideSecret = false,
  }) async {
    final response = await client.invokeApi(
      method: Method.get,
      path: '/repos/{owner}/{repo}/secret-scanning/alerts'
          .replaceAll('{owner}', '${owner}')
          .replaceAll('{repo}', '${repo}'),
      queryParameters: {
        if (state != null) 'state': [state.toJson().toString()],
        if (secretType != null) 'secret_type': [secretType.toString()],
        if (resolution != null) 'resolution': [resolution.toString()],
        if (sort != null) 'sort': [sort.toJson().toString()],
        if (direction != null) 'direction': [direction.toJson().toString()],
        if (page != null) 'page': [page.toString()],
        if (perPage != null) 'per_page': [perPage.toString()],
        if (before != null) 'before': [before.toString()],
        if (after != null) 'after': [after.toString()],
        if (validity != null) 'validity': [validity.toString()],
        if (isPubliclyLeaked != null)
          'is_publicly_leaked': [isPubliclyLeaked.toString()],
        if (isMultiRepo != null) 'is_multi_repo': [isMultiRepo.toString()],
        if (hideSecret != null) 'hide_secret': [hideSecret.toString()],
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
          .map<SecretScanningAlert>(
            (e) => SecretScanningAlert.fromJson(e as Map<String, dynamic>),
          )
          .toList();
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// Get a secret scanning alert
  /// Gets a single secret scanning alert detected in an eligible repository.
  ///
  /// The authenticated user must be an administrator for the repository or
  /// for the organization that owns the repository to use this endpoint.
  ///
  /// OAuth app tokens and personal access tokens (classic) need the `repo` or
  /// `security_events` scope to use this endpoint. If this endpoint is only
  /// used with public repositories, the token can use the `public_repo` scope
  /// instead.
  Future<SecretScanningAlert> secretScanningGetAlert(
    String owner,
    String repo,
    AlertNumber alertNumber, {
    bool? hideSecret = false,
  }) async {
    final response = await client.invokeApi(
      method: Method.get,
      path: '/repos/{owner}/{repo}/secret-scanning/alerts/{alert_number}'
          .replaceAll('{owner}', '${owner}')
          .replaceAll('{repo}', '${repo}')
          .replaceAll('{alert_number}', '${alertNumber.toJson()}'),
      queryParameters: {
        if (hideSecret != null) 'hide_secret': [hideSecret.toString()],
      },
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }

    if (response.body.isNotEmpty) {
      return SecretScanningAlert.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// Update a secret scanning alert
  /// Updates the status of a secret scanning alert in an eligible repository.
  ///
  /// The authenticated user must be an administrator for the repository or
  /// for the organization that owns the repository to use this endpoint.
  ///
  /// OAuth app tokens and personal access tokens (classic) need the `repo` or
  /// `security_events` scope to use this endpoint. If this endpoint is only
  /// used with public repositories, the token can use the `public_repo` scope
  /// instead.
  Future<SecretScanningAlert> secretScanningUpdateAlert(
    String owner,
    String repo,
    AlertNumber alertNumber,
    SecretScanningUpdateAlertRequest secretScanningUpdateAlertRequest,
  ) async {
    final response = await client.invokeApi(
      method: Method.patch,
      path: '/repos/{owner}/{repo}/secret-scanning/alerts/{alert_number}'
          .replaceAll('{owner}', '${owner}')
          .replaceAll('{repo}', '${repo}')
          .replaceAll('{alert_number}', '${alertNumber.toJson()}'),
      body: secretScanningUpdateAlertRequest.toJson(),
      bodyContentType: BodyContentType.json,
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }

    if (response.body.isNotEmpty) {
      return SecretScanningAlert.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// List locations for a secret scanning alert
  /// Lists all locations for a given secret scanning alert for an eligible
  /// repository.
  ///
  /// The authenticated user must be an administrator for the repository or
  /// for the organization that owns the repository to use this endpoint.
  ///
  /// OAuth app tokens and personal access tokens (classic) need the `repo` or
  /// `security_events` scope to use this endpoint. If this endpoint is only
  /// used with public repositories, the token can use the `public_repo` scope
  /// instead.
  Future<List<SecretScanningLocation>> secretScanningListLocationsForAlert(
    String owner,
    String repo,
    AlertNumber alertNumber, {
    int? page = 1,
    int? perPage = 30,
  }) async {
    final response = await client.invokeApi(
      method: Method.get,
      path:
          '/repos/{owner}/{repo}/secret-scanning/alerts/{alert_number}/locations'
              .replaceAll('{owner}', '${owner}')
              .replaceAll('{repo}', '${repo}')
              .replaceAll('{alert_number}', '${alertNumber.toJson()}'),
      queryParameters: {
        if (page != null) 'page': [page.toString()],
        if (perPage != null) 'per_page': [perPage.toString()],
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
          .map<SecretScanningLocation>(
            (e) => SecretScanningLocation.fromJson(e as Map<String, dynamic>),
          )
          .toList();
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// Create a push protection bypass
  /// Creates a bypass for a previously push protected secret.
  ///
  /// The authenticated user must be the original author of the committed
  /// secret.
  ///
  /// OAuth app tokens and personal access tokens (classic) need the `repo`
  /// scope to use this endpoint.
  Future<SecretScanningPushProtectionBypass>
  secretScanningCreatePushProtectionBypass(
    String owner,
    String repo,
    SecretScanningCreatePushProtectionBypassRequest
    secretScanningCreatePushProtectionBypassRequest,
  ) async {
    final response = await client.invokeApi(
      method: Method.post,
      path: '/repos/{owner}/{repo}/secret-scanning/push-protection-bypasses'
          .replaceAll('{owner}', '${owner}')
          .replaceAll('{repo}', '${repo}'),
      body: secretScanningCreatePushProtectionBypassRequest.toJson(),
      bodyContentType: BodyContentType.json,
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }

    if (response.body.isNotEmpty) {
      return SecretScanningPushProtectionBypass.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// Get secret scanning scan history for a repository
  /// Lists the latest default incremental and backfill scans by type for a
  /// repository. Scans from Copilot Secret Scanning are not included.
  ///
  /// OAuth app tokens and personal access tokens (classic) need the `repo` or
  /// `security_events` scope to use this endpoint. If this endpoint is only
  /// used with public repositories, the token can use the `public_repo` scope
  /// instead.
  Future<SecretScanningScanHistory> secretScanningGetScanHistory(
    String owner,
    String repo,
  ) async {
    final response = await client.invokeApi(
      method: Method.get,
      path: '/repos/{owner}/{repo}/secret-scanning/scan-history'
          .replaceAll('{owner}', '${owner}')
          .replaceAll('{repo}', '${repo}'),
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }

    if (response.body.isNotEmpty) {
      return SecretScanningScanHistory.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }
}
