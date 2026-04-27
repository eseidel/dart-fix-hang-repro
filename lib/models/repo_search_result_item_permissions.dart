import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

@immutable
class RepoSearchResultItemPermissions {
  RepoSearchResultItemPermissions({
    required this.admin,
    this.maintain,
    required this.push,
    this.triage,
    required this.pull,
  });

  /// Converts a `Map<String, dynamic>` to a [RepoSearchResultItemPermissions].
  factory RepoSearchResultItemPermissions.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'RepoSearchResultItemPermissions',
      json,
      () => RepoSearchResultItemPermissions(
        admin: json['admin'] as bool,
        maintain: json['maintain'] as bool?,
        push: json['push'] as bool,
        triage: json['triage'] as bool?,
        pull: json['pull'] as bool,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepoSearchResultItemPermissions? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return RepoSearchResultItemPermissions.fromJson(json);
  }

  final bool admin;
  final bool? maintain;
  final bool push;
  final bool? triage;
  final bool pull;

  /// Converts a [RepoSearchResultItemPermissions] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'admin': admin,
      'maintain': maintain,
      'push': push,
      'triage': triage,
      'pull': pull,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    admin,
    maintain,
    push,
    triage,
    pull,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepoSearchResultItemPermissions &&
        this.admin == other.admin &&
        this.maintain == other.maintain &&
        this.push == other.push &&
        this.triage == other.triage &&
        this.pull == other.pull;
  }
}
