import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

@immutable
class CollaboratorPermissions {
  CollaboratorPermissions({
    required this.pull,
    this.triage,
    required this.push,
    this.maintain,
    required this.admin,
  });

  /// Converts a `Map<String, dynamic>` to a [CollaboratorPermissions].
  factory CollaboratorPermissions.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'CollaboratorPermissions',
      json,
      () => CollaboratorPermissions(
        pull: json['pull'] as bool,
        triage: json['triage'] as bool?,
        push: json['push'] as bool,
        maintain: json['maintain'] as bool?,
        admin: json['admin'] as bool,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static CollaboratorPermissions? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return CollaboratorPermissions.fromJson(json);
  }

  final bool pull;
  final bool? triage;
  final bool push;
  final bool? maintain;
  final bool admin;

  /// Converts a [CollaboratorPermissions] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'pull': pull,
      'triage': triage,
      'push': push,
      'maintain': maintain,
      'admin': admin,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    pull,
    triage,
    push,
    maintain,
    admin,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CollaboratorPermissions &&
        this.pull == other.pull &&
        this.triage == other.triage &&
        this.push == other.push &&
        this.maintain == other.maintain &&
        this.admin == other.admin;
  }
}
