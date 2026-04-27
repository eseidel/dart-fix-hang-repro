import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/organization_actions_secret_visibility.dart';
import 'package:meta/meta.dart';

/// {@template organization_actions_secret}
/// Actions Secret for an Organization
/// Secrets for GitHub Actions for an organization.
/// {@endtemplate}
@immutable
class OrganizationActionsSecret {
  /// {@macro organization_actions_secret}
  OrganizationActionsSecret({
    required this.name,
    required this.createdAt,
    required this.updatedAt,
    required this.visibility,
    this.selectedRepositoriesUrl,
  });

  /// Converts a `Map<String, dynamic>` to an [OrganizationActionsSecret].
  factory OrganizationActionsSecret.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'OrganizationActionsSecret',
      json,
      () => OrganizationActionsSecret(
        name: json['name'] as String,
        createdAt: DateTime.parse(json['created_at'] as String),
        updatedAt: DateTime.parse(json['updated_at'] as String),
        visibility: OrganizationActionsSecretVisibility.fromJson(
          json['visibility'] as String,
        ),
        selectedRepositoriesUrl: maybeParseUri(
          json['selected_repositories_url'] as String?,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static OrganizationActionsSecret? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return OrganizationActionsSecret.fromJson(json);
  }

  /// The name of the secret.
  /// example: `'SECRET_TOKEN'`
  final String name;
  final DateTime createdAt;
  final DateTime updatedAt;

  /// Visibility of a secret
  final OrganizationActionsSecretVisibility visibility;

  /// example:
  /// `'https://api.github.com/organizations/org/secrets/my_secret/repositories'`
  final Uri? selectedRepositoriesUrl;

  /// Converts an [OrganizationActionsSecret] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
      'visibility': visibility.toJson(),
      'selected_repositories_url': selectedRepositoriesUrl?.toString(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    name,
    createdAt,
    updatedAt,
    visibility,
    selectedRepositoriesUrl,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is OrganizationActionsSecret &&
        this.name == other.name &&
        this.createdAt == other.createdAt &&
        this.updatedAt == other.updatedAt &&
        this.visibility == other.visibility &&
        this.selectedRepositoriesUrl == other.selectedRepositoriesUrl;
  }
}
