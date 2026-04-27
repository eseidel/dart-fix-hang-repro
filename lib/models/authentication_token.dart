import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/authentication_token_repository_selection.dart';
import 'package:github_out/models/license_simple.dart';
import 'package:github_out/models/repository.dart';
import 'package:github_out/models/repository_code_search_index_status.dart';
import 'package:github_out/models/repository_merge_commit_message.dart';
import 'package:github_out/models/repository_merge_commit_title.dart';
import 'package:github_out/models/repository_permissions.dart';
import 'package:github_out/models/repository_squash_merge_commit_message.dart';
import 'package:github_out/models/repository_squash_merge_commit_title.dart';
import 'package:github_out/models/simple_user.dart';
import 'package:meta/meta.dart';

/// {@template authentication_token}
/// Authentication Token
/// Authentication Token
/// {@endtemplate}
@immutable
class AuthenticationToken {
  /// {@macro authentication_token}
  AuthenticationToken({
    required this.token,
    required this.expiresAt,
    this.permissions,
    this.repositories,
    this.singleFile,
    this.repositorySelection,
  });

  /// Converts a `Map<String, dynamic>` to an [AuthenticationToken].
  factory AuthenticationToken.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'AuthenticationToken',
      json,
      () => AuthenticationToken(
        token: json['token'] as String,
        expiresAt: DateTime.parse(json['expires_at'] as String),
        permissions: json['permissions'],
        repositories: (json['repositories'] as List?)
            ?.map<Repository>(
              (e) => Repository.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
        singleFile: json['single_file'] as String?,
        repositorySelection:
            AuthenticationTokenRepositorySelection.maybeFromJson(
              json['repository_selection'] as String?,
            ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static AuthenticationToken? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return AuthenticationToken.fromJson(json);
  }

  /// The token used for authentication
  /// example: `'v1.1f699f1069f60xxx'`
  final String token;

  /// The time this token expires
  /// example: `'2016-07-11T22:14:10Z'`
  final DateTime expiresAt;

  /// example: `{issues: read, deployments: write}`
  final dynamic? permissions;

  /// The repositories this token has access to
  final List<Repository>? repositories;

  /// example: `'config.yaml'`
  final String? singleFile;

  /// Describe whether all repositories have been selected or there's a
  /// selection involved
  final AuthenticationTokenRepositorySelection? repositorySelection;

  /// Converts an [AuthenticationToken] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'token': token,
      'expires_at': expiresAt.toIso8601String(),
      'permissions': permissions,
      'repositories': repositories?.map((e) => e.toJson()).toList(),
      'single_file': singleFile,
      'repository_selection': repositorySelection?.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    token,
    expiresAt,
    permissions,
    listHash(repositories),
    singleFile,
    repositorySelection,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is AuthenticationToken &&
        this.token == other.token &&
        this.expiresAt == other.expiresAt &&
        this.permissions == other.permissions &&
        listsEqual(this.repositories, other.repositories) &&
        this.singleFile == other.singleFile &&
        this.repositorySelection == other.repositorySelection;
  }
}
