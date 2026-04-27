import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/repository_rule_max_file_path_length_parameters.dart';
import 'package:github_out/models/repository_rule_max_file_path_length_type.dart';
import 'package:meta/meta.dart';

/// {@template repository_rule_max_file_path_length}
/// max_file_path_length
/// Prevent commits that include file paths that exceed the specified character
/// limit from being pushed to the commit graph.
/// {@endtemplate}
@immutable
class RepositoryRuleMaxFilePathLength {
  /// {@macro repository_rule_max_file_path_length}
  RepositoryRuleMaxFilePathLength({
    required this.type,
    this.parameters,
  });

  /// Converts a `Map<String, dynamic>` to a [RepositoryRuleMaxFilePathLength].
  factory RepositoryRuleMaxFilePathLength.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'RepositoryRuleMaxFilePathLength',
      json,
      () => RepositoryRuleMaxFilePathLength(
        type: RepositoryRuleMaxFilePathLengthType.fromJson(
          json['type'] as String,
        ),
        parameters: RepositoryRuleMaxFilePathLengthParameters.maybeFromJson(
          json['parameters'] as Map<String, dynamic>?,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRuleMaxFilePathLength? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return RepositoryRuleMaxFilePathLength.fromJson(json);
  }

  final RepositoryRuleMaxFilePathLengthType type;
  final RepositoryRuleMaxFilePathLengthParameters? parameters;

  /// Converts a [RepositoryRuleMaxFilePathLength] to a `Map<String, dynamic>`.
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
    return other is RepositoryRuleMaxFilePathLength &&
        this.type == other.type &&
        this.parameters == other.parameters;
  }
}
