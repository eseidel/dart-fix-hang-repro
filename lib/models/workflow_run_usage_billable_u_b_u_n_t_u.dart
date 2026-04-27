// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/workflow_run_usage_billable_u_b_u_n_t_u_job_runs_inner.dart';
import 'package:meta/meta.dart';

@immutable
class WorkflowRunUsageBillableUBUNTU {
  const WorkflowRunUsageBillableUBUNTU({
    required this.totalMs,
    required this.jobs,
    this.jobRuns,
  });

  /// Converts a `Map<String, dynamic>` to a [WorkflowRunUsageBillableUBUNTU].
  factory WorkflowRunUsageBillableUBUNTU.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'WorkflowRunUsageBillableUBUNTU',
      json,
      () => WorkflowRunUsageBillableUBUNTU(
        totalMs: json['total_ms'] as int,
        jobs: json['jobs'] as int,
        jobRuns: (json['job_runs'] as List?)
            ?.map<WorkflowRunUsageBillableUBUNTUJobRunsInner>(
              (e) => WorkflowRunUsageBillableUBUNTUJobRunsInner.fromJson(
                e as Map<String, dynamic>,
              ),
            )
            .toList(),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static WorkflowRunUsageBillableUBUNTU? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return WorkflowRunUsageBillableUBUNTU.fromJson(json);
  }

  final int totalMs;
  final int jobs;
  final List<WorkflowRunUsageBillableUBUNTUJobRunsInner>? jobRuns;

  /// Converts a [WorkflowRunUsageBillableUBUNTU] to a `Map<String, dynamic>`.
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
    return other is WorkflowRunUsageBillableUBUNTU &&
        totalMs == other.totalMs &&
        jobs == other.jobs &&
        listsEqual(jobRuns, other.jobRuns);
  }
}
