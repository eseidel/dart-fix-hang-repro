import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/repository_rule_max_file_size_parameters.dart';
import 'package:github_out/models/repository_rule_max_file_size_type.dart';
import 'package:meta/meta.dart';

/// {@template repository_rule_max_file_size}
/// max_file_size
/// Prevent commits with individual files that exceed the specified limit from
/// being pushed to the commit graph.
/// {@endtemplate}
@immutable
class RepositoryRuleMaxFileSize {
  /// {@macro repository_rule_max_file_size}
  RepositoryRuleMaxFileSize({
    required this.type,
    this.parameters,
  });

  /// Converts a `Map<String, dynamic>` to a [RepositoryRuleMaxFileSize].
  factory RepositoryRuleMaxFileSize.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'RepositoryRuleMaxFileSize',
      json,
      () => RepositoryRuleMaxFileSize(
        type: RepositoryRuleMaxFileSizeType.fromJson(json['type'] as String),
        parameters: RepositoryRuleMaxFileSizeParameters.maybeFromJson(
          json['parameters'] as Map<String, dynamic>?,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRuleMaxFileSize? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return RepositoryRuleMaxFileSize.fromJson(json);
  }

  final RepositoryRuleMaxFileSizeType type;
  final RepositoryRuleMaxFileSizeParameters? parameters;

  /// Converts a [RepositoryRuleMaxFileSize] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'type': type.toJson(),
      'parameters': parameters?.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    type,
    parameters,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleMaxFileSize &&
        this.type == other.type &&
        this.parameters == other.parameters;
  }
}
