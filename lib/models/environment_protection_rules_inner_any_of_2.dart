import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

@immutable
class EnvironmentProtectionRulesInnerAnyOf2 {
  EnvironmentProtectionRulesInnerAnyOf2({
    required this.id,
    required this.nodeId,
    required this.type,
  });

  /// Converts a `Map<String, dynamic>` to an
  /// [EnvironmentProtectionRulesInnerAnyOf2].
  factory EnvironmentProtectionRulesInnerAnyOf2.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'EnvironmentProtectionRulesInnerAnyOf2',
      json,
      () => EnvironmentProtectionRulesInnerAnyOf2(
        id: (json['id'] as int),
        nodeId: json['node_id'] as String,
        type: json['type'] as String,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static EnvironmentProtectionRulesInnerAnyOf2? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return EnvironmentProtectionRulesInnerAnyOf2.fromJson(json);
  }

  /// example: `3515`
  final int id;

  /// example: `'MDQ6R2F0ZTM1MTU='`
  final String nodeId;

  /// example: `'branch_policy'`
  final String type;

  /// Converts an [EnvironmentProtectionRulesInnerAnyOf2]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'node_id': nodeId,
      'type': type,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    nodeId,
    type,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is EnvironmentProtectionRulesInnerAnyOf2 &&
        this.id == other.id &&
        this.nodeId == other.nodeId &&
        this.type == other.type;
  }
}
