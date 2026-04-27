import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/workflow_run_usage_billable_w_i_n_d_o_w_s_job_runs_inner.dart';
import 'package:meta/meta.dart';

@immutable
class WorkflowRunUsageBillableWINDOWS {
  WorkflowRunUsageBillableWINDOWS({
    required this.totalMs,
    required this.jobs,
    this.jobRuns,
  });

  /// Converts a `Map<String, dynamic>` to a [WorkflowRunUsageBillableWINDOWS].
  factory WorkflowRunUsageBillableWINDOWS.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'WorkflowRunUsageBillableWINDOWS',
      json,
      () => WorkflowRunUsageBillableWINDOWS(
        totalMs: (json['total_ms'] as int),
        jobs: (json['jobs'] as int),
        jobRuns: (json['job_runs'] as List?)
            ?.map<WorkflowRunUsageBillableWINDOWSJobRunsInner>(
              (e) => WorkflowRunUsageBillableWINDOWSJobRunsInner.fromJson(
                e as Map<String, dynamic>,
              ),
            )
            .toList(),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static WorkflowRunUsageBillableWINDOWS? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return WorkflowRunUsageBillableWINDOWS.fromJson(json);
  }

  final int totalMs;
  final int jobs;
  final List<WorkflowRunUsageBillableWINDOWSJobRunsInner>? jobRuns;

  /// Converts a [WorkflowRunUsageBillableWINDOWS] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'total_ms': totalMs,
      'jobs': jobs,
      'job_runs': jobRuns?.map((e) => e.toJson()).toList(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    totalMs,
    jobs,
    listHash(jobRuns),
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is WorkflowRunUsageBillableWINDOWS &&
        this.totalMs == other.totalMs &&
        this.jobs == other.jobs &&
        listsEqual(this.jobRuns, other.jobRuns);
  }
}
