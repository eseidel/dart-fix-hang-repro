// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/workflow_run_usage_billable_m_a_c_o_s.dart';
import 'package:github_out/models/workflow_run_usage_billable_u_b_u_n_t_u.dart';
import 'package:github_out/models/workflow_run_usage_billable_w_i_n_d_o_w_s.dart';
import 'package:meta/meta.dart';

@immutable
class WorkflowRunUsageBillable {
  const WorkflowRunUsageBillable({
    this.ubuntu,
    this.macos,
    this.windows,
  });

  /// Converts a `Map<String, dynamic>` to a [WorkflowRunUsageBillable].
  factory WorkflowRunUsageBillable.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'WorkflowRunUsageBillable',
      json,
      () => WorkflowRunUsageBillable(
        ubuntu: WorkflowRunUsageBillableUBUNTU.maybeFromJson(
          json['UBUNTU'] as Map<String, dynamic>?,
        ),
        macos: WorkflowRunUsageBillableMACOS.maybeFromJson(
          json['MACOS'] as Map<String, dynamic>?,
        ),
        windows: WorkflowRunUsageBillableWINDOWS.maybeFromJson(
          json['WINDOWS'] as Map<String, dynamic>?,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static WorkflowRunUsageBillable? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return WorkflowRunUsageBillable.fromJson(json);
  }

  final WorkflowRunUsageBillableUBUNTU? ubuntu;
  final WorkflowRunUsageBillableMACOS? macos;
  final WorkflowRunUsageBillableWINDOWS? windows;

  /// Converts a [WorkflowRunUsageBillable] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'UBUNTU': ubuntu?.toJson(),
      'MACOS': macos?.toJson(),
      'WINDOWS': windows?.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    ubuntu,
    macos,
    windows,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is WorkflowRunUsageBillable &&
        ubuntu == other.ubuntu &&
        macos == other.macos &&
        windows == other.windows;
  }
}
