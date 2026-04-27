import 'package:github_out/models/repository_rule_detailed_one_of_0.dart';
import 'package:github_out/models/repository_rule_detailed_one_of_1.dart';
import 'package:github_out/models/repository_rule_detailed_one_of_10.dart';
import 'package:github_out/models/repository_rule_detailed_one_of_11.dart';
import 'package:github_out/models/repository_rule_detailed_one_of_12.dart';
import 'package:github_out/models/repository_rule_detailed_one_of_13.dart';
import 'package:github_out/models/repository_rule_detailed_one_of_14.dart';
import 'package:github_out/models/repository_rule_detailed_one_of_15.dart';
import 'package:github_out/models/repository_rule_detailed_one_of_16.dart';
import 'package:github_out/models/repository_rule_detailed_one_of_17.dart';
import 'package:github_out/models/repository_rule_detailed_one_of_18.dart';
import 'package:github_out/models/repository_rule_detailed_one_of_19.dart';
import 'package:github_out/models/repository_rule_detailed_one_of_2.dart';
import 'package:github_out/models/repository_rule_detailed_one_of_20.dart';
import 'package:github_out/models/repository_rule_detailed_one_of_3.dart';
import 'package:github_out/models/repository_rule_detailed_one_of_4.dart';
import 'package:github_out/models/repository_rule_detailed_one_of_5.dart';
import 'package:github_out/models/repository_rule_detailed_one_of_6.dart';
import 'package:github_out/models/repository_rule_detailed_one_of_7.dart';
import 'package:github_out/models/repository_rule_detailed_one_of_8.dart';
import 'package:github_out/models/repository_rule_detailed_one_of_9.dart';
import 'package:meta/meta.dart';

/// Repository Rule
/// A repository rule with ruleset details.
sealed class RepositoryRuleDetailed {
  const RepositoryRuleDetailed();

  factory RepositoryRuleDetailed.fromJson(Map<String, dynamic> json) {
    final discriminator = json['type'];
    return switch (discriminator) {
      'creation' => RepositoryRuleDetailedRepositoryRuleDetailedOneOf0(
        RepositoryRuleDetailedOneOf0.fromJson(json),
      ),
      'update' => RepositoryRuleDetailedRepositoryRuleDetailedOneOf1(
        RepositoryRuleDetailedOneOf1.fromJson(json),
      ),
      'deletion' => RepositoryRuleDetailedRepositoryRuleDetailedOneOf2(
        RepositoryRuleDetailedOneOf2.fromJson(json),
      ),
      'required_linear_history' =>
        RepositoryRuleDetailedRepositoryRuleDetailedOneOf3(
          RepositoryRuleDetailedOneOf3.fromJson(json),
        ),
      'merge_queue' => RepositoryRuleDetailedRepositoryRuleDetailedOneOf4(
        RepositoryRuleDetailedOneOf4.fromJson(json),
      ),
      'required_deployments' =>
        RepositoryRuleDetailedRepositoryRuleDetailedOneOf5(
          RepositoryRuleDetailedOneOf5.fromJson(json),
        ),
      'required_signatures' =>
        RepositoryRuleDetailedRepositoryRuleDetailedOneOf6(
          RepositoryRuleDetailedOneOf6.fromJson(json),
        ),
      'pull_request' => RepositoryRuleDetailedRepositoryRuleDetailedOneOf7(
        RepositoryRuleDetailedOneOf7.fromJson(json),
      ),
      'required_status_checks' =>
        RepositoryRuleDetailedRepositoryRuleDetailedOneOf8(
          RepositoryRuleDetailedOneOf8.fromJson(json),
        ),
      'non_fast_forward' => RepositoryRuleDetailedRepositoryRuleDetailedOneOf9(
        RepositoryRuleDetailedOneOf9.fromJson(json),
      ),
      'commit_message_pattern' =>
        RepositoryRuleDetailedRepositoryRuleDetailedOneOf10(
          RepositoryRuleDetailedOneOf10.fromJson(json),
        ),
      'commit_author_email_pattern' =>
        RepositoryRuleDetailedRepositoryRuleDetailedOneOf11(
          RepositoryRuleDetailedOneOf11.fromJson(json),
        ),
      'committer_email_pattern' =>
        RepositoryRuleDetailedRepositoryRuleDetailedOneOf12(
          RepositoryRuleDetailedOneOf12.fromJson(json),
        ),
      'branch_name_pattern' =>
        RepositoryRuleDetailedRepositoryRuleDetailedOneOf13(
          RepositoryRuleDetailedOneOf13.fromJson(json),
        ),
      'tag_name_pattern' => RepositoryRuleDetailedRepositoryRuleDetailedOneOf14(
        RepositoryRuleDetailedOneOf14.fromJson(json),
      ),
      'file_path_restriction' =>
        RepositoryRuleDetailedRepositoryRuleDetailedOneOf15(
          RepositoryRuleDetailedOneOf15.fromJson(json),
        ),
      'max_file_path_length' =>
        RepositoryRuleDetailedRepositoryRuleDetailedOneOf16(
          RepositoryRuleDetailedOneOf16.fromJson(json),
        ),
      'file_extension_restriction' =>
        RepositoryRuleDetailedRepositoryRuleDetailedOneOf17(
          RepositoryRuleDetailedOneOf17.fromJson(json),
        ),
      'max_file_size' => RepositoryRuleDetailedRepositoryRuleDetailedOneOf18(
        RepositoryRuleDetailedOneOf18.fromJson(json),
      ),
      'workflows' => RepositoryRuleDetailedRepositoryRuleDetailedOneOf19(
        RepositoryRuleDetailedOneOf19.fromJson(json),
      ),
      'code_scanning' => RepositoryRuleDetailedRepositoryRuleDetailedOneOf20(
        RepositoryRuleDetailedOneOf20.fromJson(json),
      ),
      _ => throw FormatException(
        "Unknown type '$discriminator' for RepositoryRuleDetailed",
      ),
    };
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryRuleDetailed? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return RepositoryRuleDetailed.fromJson(json);
  }

  /// Require all subclasses to implement toJson.
  Map<String, dynamic> toJson();
}

@immutable
final class RepositoryRuleDetailedRepositoryRuleDetailedOneOf0
    extends RepositoryRuleDetailed {
  const RepositoryRuleDetailedRepositoryRuleDetailedOneOf0(this.value);

  final RepositoryRuleDetailedOneOf0 value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleDetailedRepositoryRuleDetailedOneOf0 &&
        value == other.value;
  }
}

@immutable
final class RepositoryRuleDetailedRepositoryRuleDetailedOneOf1
    extends RepositoryRuleDetailed {
  const RepositoryRuleDetailedRepositoryRuleDetailedOneOf1(this.value);

  final RepositoryRuleDetailedOneOf1 value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleDetailedRepositoryRuleDetailedOneOf1 &&
        value == other.value;
  }
}

@immutable
final class RepositoryRuleDetailedRepositoryRuleDetailedOneOf2
    extends RepositoryRuleDetailed {
  const RepositoryRuleDetailedRepositoryRuleDetailedOneOf2(this.value);

  final RepositoryRuleDetailedOneOf2 value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleDetailedRepositoryRuleDetailedOneOf2 &&
        value == other.value;
  }
}

@immutable
final class RepositoryRuleDetailedRepositoryRuleDetailedOneOf3
    extends RepositoryRuleDetailed {
  const RepositoryRuleDetailedRepositoryRuleDetailedOneOf3(this.value);

  final RepositoryRuleDetailedOneOf3 value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleDetailedRepositoryRuleDetailedOneOf3 &&
        value == other.value;
  }
}

@immutable
final class RepositoryRuleDetailedRepositoryRuleDetailedOneOf4
    extends RepositoryRuleDetailed {
  const RepositoryRuleDetailedRepositoryRuleDetailedOneOf4(this.value);

  final RepositoryRuleDetailedOneOf4 value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleDetailedRepositoryRuleDetailedOneOf4 &&
        value == other.value;
  }
}

@immutable
final class RepositoryRuleDetailedRepositoryRuleDetailedOneOf5
    extends RepositoryRuleDetailed {
  const RepositoryRuleDetailedRepositoryRuleDetailedOneOf5(this.value);

  final RepositoryRuleDetailedOneOf5 value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleDetailedRepositoryRuleDetailedOneOf5 &&
        value == other.value;
  }
}

@immutable
final class RepositoryRuleDetailedRepositoryRuleDetailedOneOf6
    extends RepositoryRuleDetailed {
  const RepositoryRuleDetailedRepositoryRuleDetailedOneOf6(this.value);

  final RepositoryRuleDetailedOneOf6 value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleDetailedRepositoryRuleDetailedOneOf6 &&
        value == other.value;
  }
}

@immutable
final class RepositoryRuleDetailedRepositoryRuleDetailedOneOf7
    extends RepositoryRuleDetailed {
  const RepositoryRuleDetailedRepositoryRuleDetailedOneOf7(this.value);

  final RepositoryRuleDetailedOneOf7 value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleDetailedRepositoryRuleDetailedOneOf7 &&
        value == other.value;
  }
}

@immutable
final class RepositoryRuleDetailedRepositoryRuleDetailedOneOf8
    extends RepositoryRuleDetailed {
  const RepositoryRuleDetailedRepositoryRuleDetailedOneOf8(this.value);

  final RepositoryRuleDetailedOneOf8 value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleDetailedRepositoryRuleDetailedOneOf8 &&
        value == other.value;
  }
}

@immutable
final class RepositoryRuleDetailedRepositoryRuleDetailedOneOf9
    extends RepositoryRuleDetailed {
  const RepositoryRuleDetailedRepositoryRuleDetailedOneOf9(this.value);

  final RepositoryRuleDetailedOneOf9 value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleDetailedRepositoryRuleDetailedOneOf9 &&
        value == other.value;
  }
}

@immutable
final class RepositoryRuleDetailedRepositoryRuleDetailedOneOf10
    extends RepositoryRuleDetailed {
  const RepositoryRuleDetailedRepositoryRuleDetailedOneOf10(this.value);

  final RepositoryRuleDetailedOneOf10 value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleDetailedRepositoryRuleDetailedOneOf10 &&
        value == other.value;
  }
}

@immutable
final class RepositoryRuleDetailedRepositoryRuleDetailedOneOf11
    extends RepositoryRuleDetailed {
  const RepositoryRuleDetailedRepositoryRuleDetailedOneOf11(this.value);

  final RepositoryRuleDetailedOneOf11 value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleDetailedRepositoryRuleDetailedOneOf11 &&
        value == other.value;
  }
}

@immutable
final class RepositoryRuleDetailedRepositoryRuleDetailedOneOf12
    extends RepositoryRuleDetailed {
  const RepositoryRuleDetailedRepositoryRuleDetailedOneOf12(this.value);

  final RepositoryRuleDetailedOneOf12 value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleDetailedRepositoryRuleDetailedOneOf12 &&
        value == other.value;
  }
}

@immutable
final class RepositoryRuleDetailedRepositoryRuleDetailedOneOf13
    extends RepositoryRuleDetailed {
  const RepositoryRuleDetailedRepositoryRuleDetailedOneOf13(this.value);

  final RepositoryRuleDetailedOneOf13 value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleDetailedRepositoryRuleDetailedOneOf13 &&
        value == other.value;
  }
}

@immutable
final class RepositoryRuleDetailedRepositoryRuleDetailedOneOf14
    extends RepositoryRuleDetailed {
  const RepositoryRuleDetailedRepositoryRuleDetailedOneOf14(this.value);

  final RepositoryRuleDetailedOneOf14 value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleDetailedRepositoryRuleDetailedOneOf14 &&
        value == other.value;
  }
}

@immutable
final class RepositoryRuleDetailedRepositoryRuleDetailedOneOf15
    extends RepositoryRuleDetailed {
  const RepositoryRuleDetailedRepositoryRuleDetailedOneOf15(this.value);

  final RepositoryRuleDetailedOneOf15 value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleDetailedRepositoryRuleDetailedOneOf15 &&
        value == other.value;
  }
}

@immutable
final class RepositoryRuleDetailedRepositoryRuleDetailedOneOf16
    extends RepositoryRuleDetailed {
  const RepositoryRuleDetailedRepositoryRuleDetailedOneOf16(this.value);

  final RepositoryRuleDetailedOneOf16 value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleDetailedRepositoryRuleDetailedOneOf16 &&
        value == other.value;
  }
}

@immutable
final class RepositoryRuleDetailedRepositoryRuleDetailedOneOf17
    extends RepositoryRuleDetailed {
  const RepositoryRuleDetailedRepositoryRuleDetailedOneOf17(this.value);

  final RepositoryRuleDetailedOneOf17 value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleDetailedRepositoryRuleDetailedOneOf17 &&
        value == other.value;
  }
}

@immutable
final class RepositoryRuleDetailedRepositoryRuleDetailedOneOf18
    extends RepositoryRuleDetailed {
  const RepositoryRuleDetailedRepositoryRuleDetailedOneOf18(this.value);

  final RepositoryRuleDetailedOneOf18 value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleDetailedRepositoryRuleDetailedOneOf18 &&
        value == other.value;
  }
}

@immutable
final class RepositoryRuleDetailedRepositoryRuleDetailedOneOf19
    extends RepositoryRuleDetailed {
  const RepositoryRuleDetailedRepositoryRuleDetailedOneOf19(this.value);

  final RepositoryRuleDetailedOneOf19 value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleDetailedRepositoryRuleDetailedOneOf19 &&
        value == other.value;
  }
}

@immutable
final class RepositoryRuleDetailedRepositoryRuleDetailedOneOf20
    extends RepositoryRuleDetailed {
  const RepositoryRuleDetailedRepositoryRuleDetailedOneOf20(this.value);

  final RepositoryRuleDetailedOneOf20 value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryRuleDetailedRepositoryRuleDetailedOneOf20 &&
        value == other.value;
  }
}
