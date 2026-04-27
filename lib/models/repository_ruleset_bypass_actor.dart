// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/repository_ruleset_bypass_actor_actor_type.dart';
import 'package:github_out/models/repository_ruleset_bypass_actor_bypass_mode.dart';
import 'package:meta/meta.dart';

/// {@template repository_ruleset_bypass_actor}
/// Repository Ruleset Bypass Actor
/// An actor that can bypass rules in a ruleset
/// {@endtemplate}
@immutable
class RepositoryRulesetBypassActor {
  /// {@macro repository_ruleset_bypass_actor}
  const RepositoryRulesetBypassActor({
    required this.actorType,
    this.actorId,
    this.bypassMode,
  });

  /// Converts a `Map<String, dynamic>` to a [RepositoryRulesetBypassActor].
  factory RepositoryRulesetBypassActor.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'RepositoryRulesetBypassActor',
      json,
      () => RepositoryRulesetBypassActor(
        actorId: json['actor_id'] as int?,
        actorType: RepositoryRulesetBypassActorActorType.fromJson(
          json['actor_type'] as String,
        ),
        bypassMode: RepositoryRulesetBypassActorBypassMode.maybeFromJson(
          json['bypass_mode'] as String?,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRulesetBypassActor? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return RepositoryRulesetBypassActor.fromJson(json);
  }

  /// The ID of the actor that can bypass a ruleset. If `actor_type` is
  /// `OrganizationAdmin`, this should be `1`. If `actor_type` is `DeployKey`,
  /// this should be null. `OrganizationAdmin` is not applicable for personal
  /// repositories.
  final int? actorId;

  /// The type of actor that can bypass a ruleset.
  final RepositoryRulesetBypassActorActorType actorType;

  /// When the specified actor can bypass the ruleset. `pull_request` means
  /// that an actor can only bypass rules on pull requests. `pull_request` is
  /// not applicable for the `DeployKey` actor type. Also, `pull_request` is
  /// only applicable to branch rulesets.
  final RepositoryRulesetBypassActorBypassMode? bypassMode;

  /// Converts a [RepositoryRulesetBypassActor] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'actor_id': actorId,
      'actor_type': actorType.toJson(),
      'bypass_mode': bypassMode?.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    actorId,
    actorType,
    bypassMode,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRulesetBypassActor &&
        actorId == other.actorId &&
        actorType == other.actorType &&
        bypassMode == other.bypassMode;
  }
}
