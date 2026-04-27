// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
import 'package:github_out/models/environment_protection_rules_inner_any_of_0.dart';
import 'package:github_out/models/environment_protection_rules_inner_any_of_1.dart';
import 'package:github_out/models/environment_protection_rules_inner_any_of_2.dart';
import 'package:meta/meta.dart';

sealed class EnvironmentProtectionRulesInner {
  const EnvironmentProtectionRulesInner();

  factory EnvironmentProtectionRulesInner.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('wait_timer')) {
      return EnvironmentProtectionRulesInnerEnvironmentProtectionRulesInnerAnyOf0(
        EnvironmentProtectionRulesInnerAnyOf0.fromJson(json),
      );
    }
    if (json.containsKey('prevent_self_review')) {
      return EnvironmentProtectionRulesInnerEnvironmentProtectionRulesInnerAnyOf1(
        EnvironmentProtectionRulesInnerAnyOf1.fromJson(json),
      );
    }
    return EnvironmentProtectionRulesInnerEnvironmentProtectionRulesInnerAnyOf2(
      EnvironmentProtectionRulesInnerAnyOf2.fromJson(json),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static EnvironmentProtectionRulesInner? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return EnvironmentProtectionRulesInner.fromJson(json);
  }

  /// Require all subclasses to implement toJson.
  Map<String, dynamic> toJson();
}

@immutable
final class EnvironmentProtectionRulesInnerEnvironmentProtectionRulesInnerAnyOf0
    extends EnvironmentProtectionRulesInner {
  const EnvironmentProtectionRulesInnerEnvironmentProtectionRulesInnerAnyOf0(
    this.value,
  );

  final EnvironmentProtectionRulesInnerAnyOf0 value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other
            is EnvironmentProtectionRulesInnerEnvironmentProtectionRulesInnerAnyOf0 &&
        value == other.value;
  }
}

@immutable
final class EnvironmentProtectionRulesInnerEnvironmentProtectionRulesInnerAnyOf1
    extends EnvironmentProtectionRulesInner {
  const EnvironmentProtectionRulesInnerEnvironmentProtectionRulesInnerAnyOf1(
    this.value,
  );

  final EnvironmentProtectionRulesInnerAnyOf1 value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other
            is EnvironmentProtectionRulesInnerEnvironmentProtectionRulesInnerAnyOf1 &&
        value == other.value;
  }
}

@immutable
final class EnvironmentProtectionRulesInnerEnvironmentProtectionRulesInnerAnyOf2
    extends EnvironmentProtectionRulesInner {
  const EnvironmentProtectionRulesInnerEnvironmentProtectionRulesInnerAnyOf2(
    this.value,
  );

  final EnvironmentProtectionRulesInnerAnyOf2 value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other
            is EnvironmentProtectionRulesInnerEnvironmentProtectionRulesInnerAnyOf2 &&
        value == other.value;
  }
}
