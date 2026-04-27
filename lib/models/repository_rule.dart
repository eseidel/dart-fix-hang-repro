// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
import 'package:github_out/messages/repository_rule_pull_request.dart';
import 'package:github_out/models/repository_rule_branch_name_pattern.dart';
import 'package:github_out/models/repository_rule_code_scanning.dart';
import 'package:github_out/models/repository_rule_commit_author_email_pattern.dart';
import 'package:github_out/models/repository_rule_commit_message_pattern.dart';
import 'package:github_out/models/repository_rule_committer_email_pattern.dart';
import 'package:github_out/models/repository_rule_creation.dart';
import 'package:github_out/models/repository_rule_deletion.dart';
import 'package:github_out/models/repository_rule_file_extension_restriction.dart';
import 'package:github_out/models/repository_rule_file_path_restriction.dart';
import 'package:github_out/models/repository_rule_max_file_path_length.dart';
import 'package:github_out/models/repository_rule_max_file_size.dart';
import 'package:github_out/models/repository_rule_merge_queue.dart';
import 'package:github_out/models/repository_rule_non_fast_forward.dart';
import 'package:github_out/models/repository_rule_required_deployments.dart';
import 'package:github_out/models/repository_rule_required_linear_history.dart';
import 'package:github_out/models/repository_rule_required_signatures.dart';
import 'package:github_out/models/repository_rule_required_status_checks.dart';
import 'package:github_out/models/repository_rule_tag_name_pattern.dart';
import 'package:github_out/models/repository_rule_update.dart';
import 'package:github_out/models/repository_rule_workflows.dart';
import 'package:meta/meta.dart';

/// Repository Rule
/// A repository rule.
sealed class RepositoryRule {
  const RepositoryRule();

  factory RepositoryRule.fromJson(Map<String, dynamic> json) {
    final discriminator = json['type'];
    return switch (discriminator) {
      'creation' => RepositoryRuleRepositoryRuleCreation(
        RepositoryRuleCreation.fromJson(json),
      ),
      'update' => RepositoryRuleRepositoryRuleUpdate(
        RepositoryRuleUpdate.fromJson(json),
      ),
      'deletion' => RepositoryRuleRepositoryRuleDeletion(
        RepositoryRuleDeletion.fromJson(json),
      ),
      'required_linear_history' =>
        RepositoryRuleRepositoryRuleRequiredLinearHistory(
          RepositoryRuleRequiredLinearHistory.fromJson(json),
        ),
      'merge_queue' => RepositoryRuleRepositoryRuleMergeQueue(
        RepositoryRuleMergeQueue.fromJson(json),
      ),
      'required_deployments' => RepositoryRuleRepositoryRuleRequiredDeployments(
        RepositoryRuleRequiredDeployments.fromJson(json),
      ),
      'required_signatures' => RepositoryRuleRepositoryRuleRequiredSignatures(
        RepositoryRuleRequiredSignatures.fromJson(json),
      ),
      'pull_request' => RepositoryRuleRepositoryRulePullRequest(
        RepositoryRulePullRequest.fromJson(json),
      ),
      'required_status_checks' =>
        RepositoryRuleRepositoryRuleRequiredStatusChecks(
          RepositoryRuleRequiredStatusChecks.fromJson(json),
        ),
      'non_fast_forward' => RepositoryRuleRepositoryRuleNonFastForward(
        RepositoryRuleNonFastForward.fromJson(json),
      ),
      'commit_message_pattern' =>
        RepositoryRuleRepositoryRuleCommitMessagePattern(
          RepositoryRuleCommitMessagePattern.fromJson(json),
        ),
      'commit_author_email_pattern' =>
        RepositoryRuleRepositoryRuleCommitAuthorEmailPattern(
          RepositoryRuleCommitAuthorEmailPattern.fromJson(json),
        ),
      'committer_email_pattern' =>
        RepositoryRuleRepositoryRuleCommitterEmailPattern(
          RepositoryRuleCommitterEmailPattern.fromJson(json),
        ),
      'branch_name_pattern' => RepositoryRuleRepositoryRuleBranchNamePattern(
        RepositoryRuleBranchNamePattern.fromJson(json),
      ),
      'tag_name_pattern' => RepositoryRuleRepositoryRuleTagNamePattern(
        RepositoryRuleTagNamePattern.fromJson(json),
      ),
      'file_path_restriction' =>
        RepositoryRuleRepositoryRuleFilePathRestriction(
          RepositoryRuleFilePathRestriction.fromJson(json),
        ),
      'max_file_path_length' => RepositoryRuleRepositoryRuleMaxFilePathLength(
        RepositoryRuleMaxFilePathLength.fromJson(json),
      ),
      'file_extension_restriction' =>
        RepositoryRuleRepositoryRuleFileExtensionRestriction(
          RepositoryRuleFileExtensionRestriction.fromJson(json),
        ),
      'max_file_size' => RepositoryRuleRepositoryRuleMaxFileSize(
        RepositoryRuleMaxFileSize.fromJson(json),
      ),
      'workflows' => RepositoryRuleRepositoryRuleWorkflows(
        RepositoryRuleWorkflows.fromJson(json),
      ),
      'code_scanning' => RepositoryRuleRepositoryRuleCodeScanning(
        RepositoryRuleCodeScanning.fromJson(json),
      ),
      _ => throw FormatException(
        "Unknown type '$discriminator' for RepositoryRule",
      ),
    };
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRule? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return RepositoryRule.fromJson(json);
  }

  /// Require all subclasses to implement toJson.
  Map<String, dynamic> toJson();
}

@immutable
final class RepositoryRuleRepositoryRuleCreation extends RepositoryRule {
  const RepositoryRuleRepositoryRuleCreation(this.value);

  final RepositoryRuleCreation value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleRepositoryRuleCreation &&
        value == other.value;
  }
}

@immutable
final class RepositoryRuleRepositoryRuleUpdate extends RepositoryRule {
  const RepositoryRuleRepositoryRuleUpdate(this.value);

  final RepositoryRuleUpdate value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleRepositoryRuleUpdate && value == other.value;
  }
}

@immutable
final class RepositoryRuleRepositoryRuleDeletion extends RepositoryRule {
  const RepositoryRuleRepositoryRuleDeletion(this.value);

  final RepositoryRuleDeletion value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleRepositoryRuleDeletion &&
        value == other.value;
  }
}

@immutable
final class RepositoryRuleRepositoryRuleRequiredLinearHistory
    extends RepositoryRule {
  const RepositoryRuleRepositoryRuleRequiredLinearHistory(this.value);

  final RepositoryRuleRequiredLinearHistory value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleRepositoryRuleRequiredLinearHistory &&
        value == other.value;
  }
}

@immutable
final class RepositoryRuleRepositoryRuleMergeQueue extends RepositoryRule {
  const RepositoryRuleRepositoryRuleMergeQueue(this.value);

  final RepositoryRuleMergeQueue value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleRepositoryRuleMergeQueue &&
        value == other.value;
  }
}

@immutable
final class RepositoryRuleRepositoryRuleRequiredDeployments
    extends RepositoryRule {
  const RepositoryRuleRepositoryRuleRequiredDeployments(this.value);

  final RepositoryRuleRequiredDeployments value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleRepositoryRuleRequiredDeployments &&
        value == other.value;
  }
}

@immutable
final class RepositoryRuleRepositoryRuleRequiredSignatures
    extends RepositoryRule {
  const RepositoryRuleRepositoryRuleRequiredSignatures(this.value);

  final RepositoryRuleRequiredSignatures value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleRepositoryRuleRequiredSignatures &&
        value == other.value;
  }
}

@immutable
final class RepositoryRuleRepositoryRulePullRequest extends RepositoryRule {
  const RepositoryRuleRepositoryRulePullRequest(this.value);

  final RepositoryRulePullRequest value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleRepositoryRulePullRequest &&
        value == other.value;
  }
}

@immutable
final class RepositoryRuleRepositoryRuleRequiredStatusChecks
    extends RepositoryRule {
  const RepositoryRuleRepositoryRuleRequiredStatusChecks(this.value);

  final RepositoryRuleRequiredStatusChecks value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleRepositoryRuleRequiredStatusChecks &&
        value == other.value;
  }
}

@immutable
final class RepositoryRuleRepositoryRuleNonFastForward extends RepositoryRule {
  const RepositoryRuleRepositoryRuleNonFastForward(this.value);

  final RepositoryRuleNonFastForward value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleRepositoryRuleNonFastForward &&
        value == other.value;
  }
}

@immutable
final class RepositoryRuleRepositoryRuleCommitMessagePattern
    extends RepositoryRule {
  const RepositoryRuleRepositoryRuleCommitMessagePattern(this.value);

  final RepositoryRuleCommitMessagePattern value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleRepositoryRuleCommitMessagePattern &&
        value == other.value;
  }
}

@immutable
final class RepositoryRuleRepositoryRuleCommitAuthorEmailPattern
    extends RepositoryRule {
  const RepositoryRuleRepositoryRuleCommitAuthorEmailPattern(this.value);

  final RepositoryRuleCommitAuthorEmailPattern value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleRepositoryRuleCommitAuthorEmailPattern &&
        value == other.value;
  }
}

@immutable
final class RepositoryRuleRepositoryRuleCommitterEmailPattern
    extends RepositoryRule {
  const RepositoryRuleRepositoryRuleCommitterEmailPattern(this.value);

  final RepositoryRuleCommitterEmailPattern value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleRepositoryRuleCommitterEmailPattern &&
        value == other.value;
  }
}

@immutable
final class RepositoryRuleRepositoryRuleBranchNamePattern
    extends RepositoryRule {
  const RepositoryRuleRepositoryRuleBranchNamePattern(this.value);

  final RepositoryRuleBranchNamePattern value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleRepositoryRuleBranchNamePattern &&
        value == other.value;
  }
}

@immutable
final class RepositoryRuleRepositoryRuleTagNamePattern extends RepositoryRule {
  const RepositoryRuleRepositoryRuleTagNamePattern(this.value);

  final RepositoryRuleTagNamePattern value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleRepositoryRuleTagNamePattern &&
        value == other.value;
  }
}

@immutable
final class RepositoryRuleRepositoryRuleFilePathRestriction
    extends RepositoryRule {
  const RepositoryRuleRepositoryRuleFilePathRestriction(this.value);

  final RepositoryRuleFilePathRestriction value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleRepositoryRuleFilePathRestriction &&
        value == other.value;
  }
}

@immutable
final class RepositoryRuleRepositoryRuleMaxFilePathLength
    extends RepositoryRule {
  const RepositoryRuleRepositoryRuleMaxFilePathLength(this.value);

  final RepositoryRuleMaxFilePathLength value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleRepositoryRuleMaxFilePathLength &&
        value == other.value;
  }
}

@immutable
final class RepositoryRuleRepositoryRuleFileExtensionRestriction
    extends RepositoryRule {
  const RepositoryRuleRepositoryRuleFileExtensionRestriction(this.value);

  final RepositoryRuleFileExtensionRestriction value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleRepositoryRuleFileExtensionRestriction &&
        value == other.value;
  }
}

@immutable
final class RepositoryRuleRepositoryRuleMaxFileSize extends RepositoryRule {
  const RepositoryRuleRepositoryRuleMaxFileSize(this.value);

  final RepositoryRuleMaxFileSize value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleRepositoryRuleMaxFileSize &&
        value == other.value;
  }
}

@immutable
final class RepositoryRuleRepositoryRuleWorkflows extends RepositoryRule {
  const RepositoryRuleRepositoryRuleWorkflows(this.value);

  final RepositoryRuleWorkflows value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleRepositoryRuleWorkflows &&
        value == other.value;
  }
}

@immutable
final class RepositoryRuleRepositoryRuleCodeScanning extends RepositoryRule {
  const RepositoryRuleRepositoryRuleCodeScanning(this.value);

  final RepositoryRuleCodeScanning value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleRepositoryRuleCodeScanning &&
        value == other.value;
  }
}
