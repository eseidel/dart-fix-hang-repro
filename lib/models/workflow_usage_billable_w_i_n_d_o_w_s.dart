import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

@immutable
class WorkflowUsageBillableWINDOWS {
  const WorkflowUsageBillableWINDOWS({
    this.totalMs,
  });

  /// Converts a `Map<String, dynamic>` to a [WorkflowUsageBillableWINDOWS].
  factory WorkflowUsageBillableWINDOWS.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'WorkflowUsageBillableWINDOWS',
      json,
      () => WorkflowUsageBillableWINDOWS(
        totalMs: json['total_ms'] as int?,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static WorkflowUsageBillableWINDOWS? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return WorkflowUsageBillableWINDOWS.fromJson(json);
  }

  final int? totalMs;

  /// Converts a [WorkflowUsageBillableWINDOWS] to a `Map<String, dynamic>`.
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
    return other is WorkflowUsageBillableWINDOWS && totalMs == other.totalMs;
  }
}
