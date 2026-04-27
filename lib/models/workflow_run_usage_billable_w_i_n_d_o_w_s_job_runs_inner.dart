import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

@immutable
class WorkflowRunUsageBillableWINDOWSJobRunsInner {
  WorkflowRunUsageBillableWINDOWSJobRunsInner({
    required this.jobId,
    required this.durationMs,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [WorkflowRunUsageBillableWINDOWSJobRunsInner].
  factory WorkflowRunUsageBillableWINDOWSJobRunsInner.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'WorkflowRunUsageBillableWINDOWSJobRunsInner',
      json,
      () => WorkflowRunUsageBillableWINDOWSJobRunsInner(
        jobId: (json['job_id'] as int),
        durationMs: (json['duration_ms'] as int),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static WorkflowRunUsageBillableWINDOWSJobRunsInner? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return WorkflowRunUsageBillableWINDOWSJobRunsInner.fromJson(json);
  }

  final int jobId;
  final int durationMs;

  /// Converts a [WorkflowRunUsageBillableWINDOWSJobRunsInner]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'job_id': jobId,
      'duration_ms': durationMs,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    jobId,
    durationMs,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is WorkflowRunUsageBillableWINDOWSJobRunsInner &&
        this.jobId == other.jobId &&
        this.durationMs == other.durationMs;
  }
}
