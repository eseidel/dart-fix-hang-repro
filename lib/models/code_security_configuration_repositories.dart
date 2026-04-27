// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/code_security_configuration_repositories_status.dart';
import 'package:github_out/models/simple_repository.dart';
import 'package:meta/meta.dart';

/// {@template code_security_configuration_repositories}
/// Repositories associated with a code security configuration and attachment
/// status
/// {@endtemplate}
@immutable
class CodeSecurityConfigurationRepositories {
  /// {@macro code_security_configuration_repositories}
  const CodeSecurityConfigurationRepositories({
    this.status,
    this.repository,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [CodeSecurityConfigurationRepositories].
  factory CodeSecurityConfigurationRepositories.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'CodeSecurityConfigurationRepositories',
      json,
      () => CodeSecurityConfigurationRepositories(
        status: CodeSecurityConfigurationRepositoriesStatus.maybeFromJson(
          json['status'] as String?,
        ),
        repository: SimpleRepository.maybeFromJson(
          json['repository'] as Map<String, dynamic>?,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CodeSecurityConfigurationRepositories? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return CodeSecurityConfigurationRepositories.fromJson(json);
  }

  /// The attachment status of the code security configuration on the
  /// repository.
  final CodeSecurityConfigurationRepositoriesStatus? status;

  /// Simple Repository
  /// A GitHub repository.
  final SimpleRepository? repository;

  /// Converts a [CodeSecurityConfigurationRepositories]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'status': status?.toJson(),
      'repository': repository?.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    status,
    repository,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CodeSecurityConfigurationRepositories &&
        status == other.status &&
        repository == other.repository;
  }
}
