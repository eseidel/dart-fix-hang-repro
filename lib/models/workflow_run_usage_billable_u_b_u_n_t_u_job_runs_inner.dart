import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

@immutable
class WorkflowRunUsageBillableUBUNTUJobRunsInner {
  WorkflowRunUsageBillableUBUNTUJobRunsInner({
    required this.jobId,
    required this.durationMs,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [WorkflowRunUsageBillableUBUNTUJobRunsInner].
  factory WorkflowRunUsageBillableUBUNTUJobRunsInner.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'WorkflowRunUsageBillableUBUNTUJobRunsInner',
      json,
      () => WorkflowRunUsageBillableUBUNTUJobRunsInner(
        jobId: (json['job_id'] as int),
        durationMs: (json['duration_ms'] as int),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static WorkflowRunUsageBillableUBUNTUJobRunsInner? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return WorkflowRunUsageBillableUBUNTUJobRunsInner.fromJson(json);
  }

  final int jobId;
  final int durationMs;

  /// Converts a [WorkflowRunUsageBillableUBUNTUJobRunsInner]
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
    return other is WorkflowRunUsageBillableUBUNTUJobRunsInner &&
        this.jobId == other.jobId &&
        this.durationMs == other.durationMs;
  }
}
