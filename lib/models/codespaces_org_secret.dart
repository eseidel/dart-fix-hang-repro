import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/codespaces_org_secret_visibility.dart';
import 'package:meta/meta.dart';

/// {@template codespaces_org_secret}
/// Codespaces Secret
/// Secrets for a GitHub Codespace.
/// {@endtemplate}
@immutable
class CodespacesOrgSecret {
  /// {@macro codespaces_org_secret}
  CodespacesOrgSecret({
    required this.name,
    required this.createdAt,
    required this.updatedAt,
    required this.visibility,
    this.selectedRepositoriesUrl,
  });

  /// Converts a `Map<String, dynamic>` to a [CodespacesOrgSecret].
  factory CodespacesOrgSecret.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'CodespacesOrgSecret',
      json,
      () => CodespacesOrgSecret(
        name: json['name'] as String,
        createdAt: DateTime.parse(json['created_at'] as String),
        updatedAt: DateTime.parse(json['updated_at'] as String),
        visibility: CodespacesOrgSecretVisibility.fromJson(
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
  static CodespacesOrgSecret? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return CodespacesOrgSecret.fromJson(json);
  }

  /// The name of the secret
  /// example: `'SECRET_NAME'`
  final String name;

  /// The date and time at which the secret was created, in ISO 8601 format':'
  /// YYYY-MM-DDTHH:MM:SSZ.
  final DateTime createdAt;

  /// The date and time at which the secret was created, in ISO 8601 format':'
  /// YYYY-MM-DDTHH:MM:SSZ.
  final DateTime updatedAt;

  /// The type of repositories in the organization that the secret is visible
  /// to
  final CodespacesOrgSecretVisibility visibility;

  /// The API URL at which the list of repositories this secret is visible to
  /// can be retrieved
  /// example:
  /// `'https://api.github.com/orgs/ORGANIZATION/codespaces/secrets/SECRET_NAME/repositories'`
  final Uri? selectedRepositoriesUrl;

  /// Converts a [CodespacesOrgSecret] to a `Map<String, dynamic>`.
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
    return other is CodespacesOrgSecret &&
        this.name == other.name &&
        this.createdAt == other.createdAt &&
        this.updatedAt == other.updatedAt &&
        this.visibility == other.visibility &&
        this.selectedRepositoriesUrl == other.selectedRepositoriesUrl;
  }
}
