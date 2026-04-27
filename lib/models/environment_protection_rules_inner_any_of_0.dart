import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/wait_timer.dart';
import 'package:meta/meta.dart';

@immutable
class EnvironmentProtectionRulesInnerAnyOf0 {
  const EnvironmentProtectionRulesInnerAnyOf0({
    required this.id,
    required this.nodeId,
    required this.type,
    this.waitTimer,
  });

  /// Converts a `Map<String, dynamic>` to an
  /// [EnvironmentProtectionRulesInnerAnyOf0].
  factory EnvironmentProtectionRulesInnerAnyOf0.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'EnvironmentProtectionRulesInnerAnyOf0',
      json,
      () => EnvironmentProtectionRulesInnerAnyOf0(
        id: json['id'] as int,
        nodeId: json['node_id'] as String,
        type: json['type'] as String,
        waitTimer: WaitTimer.maybeFromJson(json['wait_timer'] as int?),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static EnvironmentProtectionRulesInnerAnyOf0? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return EnvironmentProtectionRulesInnerAnyOf0.fromJson(json);
  }

  /// example: `3515`
  final int id;

  /// example: `'MDQ6R2F0ZTM1MTU='`
  final String nodeId;

  /// example: `'wait_timer'`
  final String type;

  /// The amount of time to delay a job after the job is initially triggered.
  /// The time (in minutes) must be an integer between 0 and 43,200 (30 days).
  /// example: `30`
  final WaitTimer? waitTimer;

  /// Converts an [EnvironmentProtectionRulesInnerAnyOf0]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'node_id': nodeId,
      'type': type,
      'wait_timer': waitTimer?.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    nodeId,
    type,
    waitTimer,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is EnvironmentProtectionRulesInnerAnyOf0 &&
        id == other.id &&
        nodeId == other.nodeId &&
        type == other.type &&
        waitTimer == other.waitTimer;
  }
}
