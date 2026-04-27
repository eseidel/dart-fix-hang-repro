import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/repository_rule_merge_queue_parameters.dart';
import 'package:github_out/models/repository_rule_merge_queue_parameters_grouping_strategy.dart';
import 'package:github_out/models/repository_rule_merge_queue_parameters_merge_method.dart';
import 'package:github_out/models/repository_rule_merge_queue_type.dart';
import 'package:meta/meta.dart';

/// {@template repository_rule_merge_queue}
/// merge_queue
/// Merges must be performed via a merge queue.
/// {@endtemplate}
@immutable
class RepositoryRuleMergeQueue {
  /// {@macro repository_rule_merge_queue}
  RepositoryRuleMergeQueue({
    required this.type,
    this.parameters,
  });

  /// Converts a `Map<String, dynamic>` to a [RepositoryRuleMergeQueue].
  factory RepositoryRuleMergeQueue.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'RepositoryRuleMergeQueue',
      json,
      () => RepositoryRuleMergeQueue(
        type: RepositoryRuleMergeQueueType.fromJson(json['type'] as String),
        parameters: RepositoryRuleMergeQueueParameters.maybeFromJson(
          json['parameters'] as Map<String, dynamic>?,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRuleMergeQueue? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return RepositoryRuleMergeQueue.fromJson(json);
  }

  final RepositoryRuleMergeQueueType type;
  final RepositoryRuleMergeQueueParameters? parameters;

  /// Converts a [RepositoryRuleMergeQueue] to a `Map<String, dynamic>`.
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
    return other is RepositoryRuleMergeQueue &&
        this.type == other.type &&
        this.parameters == other.parameters;
  }
}
