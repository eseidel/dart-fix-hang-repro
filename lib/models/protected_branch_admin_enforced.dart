import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

/// {@template protected_branch_admin_enforced}
/// Protected Branch Admin Enforced
/// Protected Branch Admin Enforced
/// {@endtemplate}
@immutable
class ProtectedBranchAdminEnforced {
  /// {@macro protected_branch_admin_enforced}
  ProtectedBranchAdminEnforced({
    required this.url,
    required this.enabled,
  });

  /// Converts a `Map<String, dynamic>` to a [ProtectedBranchAdminEnforced].
  factory ProtectedBranchAdminEnforced.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'ProtectedBranchAdminEnforced',
      json,
      () => ProtectedBranchAdminEnforced(
        url: Uri.parse(json['url'] as String),
        enabled: json['enabled'] as bool,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ProtectedBranchAdminEnforced? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return ProtectedBranchAdminEnforced.fromJson(json);
  }

  /// example:
  /// `'https://api.github.com/repos/octocat/Hello-World/branches/master/protection/enforce_admins'`
  final Uri url;

  /// example: `true`
  final bool enabled;

  /// Converts a [ProtectedBranchAdminEnforced] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'url': url.toString(),
      'enabled': enabled,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    url,
    enabled,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ProtectedBranchAdminEnforced &&
        this.url == other.url &&
        this.enabled == other.enabled;
  }
}
