// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/integration_installation_request_account.dart';
import 'package:github_out/models/simple_user.dart';
import 'package:meta/meta.dart';

/// {@template integration_installation_request}
/// Integration Installation Request
/// Request to install an integration on a target
/// {@endtemplate}
@immutable
class IntegrationInstallationRequest {
  /// {@macro integration_installation_request}
  const IntegrationInstallationRequest({
    required this.id,
    required this.account,
    required this.requester,
    required this.createdAt,
    this.nodeId,
  });

  /// Converts a `Map<String, dynamic>` to an [IntegrationInstallationRequest].
  factory IntegrationInstallationRequest.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'IntegrationInstallationRequest',
      json,
      () => IntegrationInstallationRequest(
        id: json['id'] as int,
        nodeId: json['node_id'] as String?,
        account: IntegrationInstallationRequestAccount.fromJson(
          json['account'] as Map<String, dynamic>,
        ),
        requester: SimpleUser.fromJson(
          json['requester'] as Map<String, dynamic>,
        ),
        createdAt: DateTime.parse(json['created_at'] as String),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static IntegrationInstallationRequest? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return IntegrationInstallationRequest.fromJson(json);
  }

  /// Unique identifier of the request installation.
  /// example: `42`
  final int id;

  /// example: `'MDExOkludGVncmF0aW9uMQ=='`
  final String? nodeId;
  final IntegrationInstallationRequestAccount account;

  /// Simple User
  /// A GitHub user.
  final SimpleUser requester;

  /// example: `'2022-07-08T16:18:44-04:00'`
  final DateTime createdAt;

  /// Converts an [IntegrationInstallationRequest] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'node_id': nodeId,
      'account': account.toJson(),
      'requester': requester.toJson(),
      'created_at': createdAt.toIso8601String(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    nodeId,
    account,
    requester,
    createdAt,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is IntegrationInstallationRequest &&
        id == other.id &&
        nodeId == other.nodeId &&
        account == other.account &&
        requester == other.requester &&
        createdAt == other.createdAt;
  }
}
