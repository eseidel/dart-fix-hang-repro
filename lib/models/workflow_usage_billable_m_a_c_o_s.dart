import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

@immutable
class WorkflowUsageBillableMACOS {
  WorkflowUsageBillableMACOS({
    this.totalMs,
  });

  /// Converts a `Map<String, dynamic>` to a [WorkflowUsageBillableMACOS].
  factory WorkflowUsageBillableMACOS.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'WorkflowUsageBillableMACOS',
      json,
      () => WorkflowUsageBillableMACOS(
        totalMs: (json['total_ms'] as int?),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static WorkflowUsageBillableMACOS? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return WorkflowUsageBillableMACOS.fromJson(json);
  }

  final int? totalMs;

  /// Converts a [WorkflowUsageBillableMACOS] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'total_ms': totalMs,
    };
  }

  @override
  int get hashCode => totalMs.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is WorkflowUsageBillableMACOS && this.totalMs == other.totalMs;
  }
}
