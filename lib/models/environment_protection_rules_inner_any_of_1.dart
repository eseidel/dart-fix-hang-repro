// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/environment_protection_rules_inner_any_of_1_reviewers_inner.dart';
import 'package:meta/meta.dart';

@immutable
class EnvironmentProtectionRulesInnerAnyOf1 {
  const EnvironmentProtectionRulesInnerAnyOf1({
    required this.id,
    required this.nodeId,
    required this.type,
    this.preventSelfReview,
    this.reviewers,
  });

  /// Converts a `Map<String, dynamic>` to an
  /// [EnvironmentProtectionRulesInnerAnyOf1].
  factory EnvironmentProtectionRulesInnerAnyOf1.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'EnvironmentProtectionRulesInnerAnyOf1',
      json,
      () => EnvironmentProtectionRulesInnerAnyOf1(
        id: json['id'] as int,
        nodeId: json['node_id'] as String,
        preventSelfReview: json['prevent_self_review'] as bool?,
        type: json['type'] as String,
        reviewers: (json['reviewers'] as List?)
            ?.map<EnvironmentProtectionRulesInnerAnyOf1ReviewersInner>(
              (e) =>
                  EnvironmentProtectionRulesInnerAnyOf1ReviewersInner.fromJson(
                    e as Map<String, dynamic>,
                  ),
            )
            .toList(),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static EnvironmentProtectionRulesInnerAnyOf1? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return EnvironmentProtectionRulesInnerAnyOf1.fromJson(json);
  }

  /// example: `3755`
  final int id;

  /// example: `'MDQ6R2F0ZTM3NTU='`
  final String nodeId;

  /// Whether deployments to this environment can be approved by the user who
  /// created the deployment.
  /// example: `false`
  final bool? preventSelfReview;

  /// example: `'required_reviewers'`
  final String type;

  /// The people or teams that may approve jobs that reference the
  /// environment. You can list up to six users or teams as reviewers. The
  /// reviewers must have at least read access to the repository. Only one of
  /// the required reviewers needs to approve the job for it to proceed.
  final List<EnvironmentProtectionRulesInnerAnyOf1ReviewersInner>? reviewers;

  /// Converts an [EnvironmentProtectionRulesInnerAnyOf1]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'node_id': nodeId,
      'prevent_self_review': preventSelfReview,
      'type': type,
      'reviewers': reviewers?.map((e) => e.toJson()).toList(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    nodeId,
    preventSelfReview,
    type,
    listHash(reviewers),
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is EnvironmentProtectionRulesInnerAnyOf1 &&
        id == other.id &&
        nodeId == other.nodeId &&
        preventSelfReview == other.preventSelfReview &&
        type == other.type &&
        listsEqual(reviewers, other.reviewers);
  }
}
