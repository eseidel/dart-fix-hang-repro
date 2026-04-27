import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/app_permissions.dart';
import 'package:github_out/models/app_permissions_actions.dart';
import 'package:github_out/models/app_permissions_administration.dart';
import 'package:github_out/models/app_permissions_checks.dart';
import 'package:github_out/models/app_permissions_codespaces.dart';
import 'package:github_out/models/app_permissions_contents.dart';
import 'package:github_out/models/app_permissions_dependabot_secrets.dart';
import 'package:github_out/models/app_permissions_deployments.dart';
import 'package:github_out/models/app_permissions_email_addresses.dart';
import 'package:github_out/models/app_permissions_environments.dart';
import 'package:github_out/models/app_permissions_followers.dart';
import 'package:github_out/models/app_permissions_git_ssh_keys.dart';
import 'package:github_out/models/app_permissions_gpg_keys.dart';
import 'package:github_out/models/app_permissions_interaction_limits.dart';
import 'package:github_out/models/app_permissions_issues.dart';
import 'package:github_out/models/app_permissions_members.dart';
import 'package:github_out/models/app_permissions_metadata.dart';
import 'package:github_out/models/app_permissions_organization_administration.dart';
import 'package:github_out/models/app_permissions_organization_announcement_banners.dart';
import 'package:github_out/models/app_permissions_organization_copilot_seat_management.dart';
import 'package:github_out/models/app_permissions_organization_custom_org_roles.dart';
import 'package:github_out/models/app_permissions_organization_custom_properties.dart';
import 'package:github_out/models/app_permissions_organization_custom_roles.dart';
import 'package:github_out/models/app_permissions_organization_events.dart';
import 'package:github_out/models/app_permissions_organization_hooks.dart';
import 'package:github_out/models/app_permissions_organization_packages.dart';
import 'package:github_out/models/app_permissions_organization_personal_access_token_requests.dart';
import 'package:github_out/models/app_permissions_organization_personal_access_tokens.dart';
import 'package:github_out/models/app_permissions_organization_plan.dart';
import 'package:github_out/models/app_permissions_organization_projects.dart';
import 'package:github_out/models/app_permissions_organization_secrets.dart';
import 'package:github_out/models/app_permissions_organization_self_hosted_runners.dart';
import 'package:github_out/models/app_permissions_organization_user_blocking.dart';
import 'package:github_out/models/app_permissions_packages.dart';
import 'package:github_out/models/app_permissions_pages.dart';
import 'package:github_out/models/app_permissions_profile.dart';
import 'package:github_out/models/app_permissions_pull_requests.dart';
import 'package:github_out/models/app_permissions_repository_custom_properties.dart';
import 'package:github_out/models/app_permissions_repository_hooks.dart';
import 'package:github_out/models/app_permissions_repository_projects.dart';
import 'package:github_out/models/app_permissions_secret_scanning_alerts.dart';
import 'package:github_out/models/app_permissions_secrets.dart';
import 'package:github_out/models/app_permissions_security_events.dart';
import 'package:github_out/models/app_permissions_single_file.dart';
import 'package:github_out/models/app_permissions_starring.dart';
import 'package:github_out/models/app_permissions_statuses.dart';
import 'package:github_out/models/app_permissions_team_discussions.dart';
import 'package:github_out/models/app_permissions_vulnerability_alerts.dart';
import 'package:github_out/models/app_permissions_workflows.dart';
import 'package:github_out/models/authorization_app.dart';
import 'package:github_out/models/scoped_installation.dart';
import 'package:github_out/models/scoped_installation_repository_selection.dart';
import 'package:github_out/models/simple_user.dart';
import 'package:meta/meta.dart';

/// {@template authorization}
/// Authorization
/// The authorization for an OAuth app, GitHub App, or a Personal Access Token.
/// {@endtemplate}
@immutable
class Authorization {
  /// {@macro authorization}
  Authorization({
    required this.id,
    required this.url,
    required this.scopes,
    required this.token,
    required this.tokenLastEight,
    required this.hashedToken,
    required this.app,
    required this.note,
    required this.noteUrl,
    required this.updatedAt,
    required this.createdAt,
    required this.fingerprint,
    this.user,
    this.installation,
    required this.expiresAt,
  });

  /// Converts a `Map<String, dynamic>` to an [Authorization].
  factory Authorization.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'Authorization',
      json,
      () => Authorization(
        id: (json['id'] as int),
        url: Uri.parse(json['url'] as String),
        scopes: (checkedKey(json, 'scopes') as List?)?.cast<String>(),
        token: json['token'] as String,
        tokenLastEight: checkedKey(json, 'token_last_eight') as String?,
        hashedToken: checkedKey(json, 'hashed_token') as String?,
        app: AuthorizationApp.fromJson(json['app'] as Map<String, dynamic>),
        note: checkedKey(json, 'note') as String?,
        noteUrl: maybeParseUri(checkedKey(json, 'note_url') as String?),
        updatedAt: DateTime.parse(json['updated_at'] as String),
        createdAt: DateTime.parse(json['created_at'] as String),
        fingerprint: checkedKey(json, 'fingerprint') as String?,
        user: SimpleUser.maybeFromJson(json['user'] as Map<String, dynamic>?),
        installation: ScopedInstallation.maybeFromJson(
          json['installation'] as Map<String, dynamic>?,
        ),
        expiresAt: maybeParseDateTime(
          checkedKey(json, 'expires_at') as String?,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static Authorization? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return Authorization.fromJson(json);
  }

  final int id;
  final Uri url;

  /// A list of scopes that this authorization is in.
  final List<String>? scopes;
  final String token;
  final String? tokenLastEight;
  final String? hashedToken;
  final AuthorizationApp app;
  final String? note;
  final Uri? noteUrl;
  final DateTime updatedAt;
  final DateTime createdAt;
  final String? fingerprint;

  /// Simple User
  /// A GitHub user.
  final SimpleUser? user;

  /// Scoped Installation
  final ScopedInstallation? installation;
  final DateTime? expiresAt;

  /// Converts an [Authorization] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'url': url.toString(),
      'scopes': scopes,
      'token': token,
      'token_last_eight': tokenLastEight,
      'hashed_token': hashedToken,
      'app': app.toJson(),
      'note': note,
      'note_url': noteUrl?.toString(),
      'updated_at': updatedAt.toIso8601String(),
      'created_at': createdAt.toIso8601String(),
      'fingerprint': fingerprint,
      'user': user?.toJson(),
      'installation': installation?.toJson(),
      'expires_at': expiresAt?.toIso8601String(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    url,
    listHash(scopes),
    token,
    tokenLastEight,
    hashedToken,
    app,
    note,
    noteUrl,
    updatedAt,
    createdAt,
    fingerprint,
    user,
    installation,
    expiresAt,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Authorization &&
        this.id == other.id &&
        this.url == other.url &&
        listsEqual(this.scopes, other.scopes) &&
        this.token == other.token &&
        this.tokenLastEight == other.tokenLastEight &&
        this.hashedToken == other.hashedToken &&
        this.app == other.app &&
        this.note == other.note &&
        this.noteUrl == other.noteUrl &&
        this.updatedAt == other.updatedAt &&
        this.createdAt == other.createdAt &&
        this.fingerprint == other.fingerprint &&
        this.user == other.user &&
        this.installation == other.installation &&
        this.expiresAt == other.expiresAt;
  }
}
