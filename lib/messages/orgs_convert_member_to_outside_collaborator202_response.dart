import 'package:meta/meta.dart';

@immutable
class OrgsConvertMemberToOutsideCollaborator202Response {
  const OrgsConvertMemberToOutsideCollaborator202Response();

  /// Converts a `Map<String, dynamic>` to an [OrgsConvertMemberToOutsideCollaborator202Response].
  factory OrgsConvertMemberToOutsideCollaborator202Response.fromJson(
    Map<String, dynamic> _,
  ) {
    return const OrgsConvertMemberToOutsideCollaborator202Response();
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static OrgsConvertMemberToOutsideCollaborator202Response? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return OrgsConvertMemberToOutsideCollaborator202Response.fromJson(json);
  }

  Map<String, dynamic> toJson() => const {};
}
