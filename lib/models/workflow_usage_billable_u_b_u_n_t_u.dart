import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

@immutable
class WorkflowUsageBillableUBUNTU {
  const WorkflowUsageBillableUBUNTU({
    this.totalMs,
  });

  /// Converts a `Map<String, dynamic>` to a [WorkflowUsageBillableUBUNTU].
  factory WorkflowUsageBillableUBUNTU.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'WorkflowUsageBillableUBUNTU',
      json,
      () => WorkflowUsageBillableUBUNTU(
        totalMs: json['total_ms'] as int?,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static WorkflowUsageBillableUBUNTU? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return WorkflowUsageBillableUBUNTU.fromJson(json);
  }

  final int? totalMs;

  /// Converts a [WorkflowUsageBillableUBUNTU] to a `Map<String, dynamic>`.
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
    return other is WorkflowUsageBillableUBUNTU && totalMs == other.totalMs;
  }
}
