import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

@immutable
class ReposCreateDeployKeyRequest {
  ReposCreateDeployKeyRequest({
    this.title,
    required this.key,
    this.readOnly,
  });

  /// Converts a `Map<String, dynamic>` to a [ReposCreateDeployKeyRequest].
  factory ReposCreateDeployKeyRequest.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'ReposCreateDeployKeyRequest',
      json,
      () => ReposCreateDeployKeyRequest(
        title: json['title'] as String?,
        key: json['key'] as String,
        readOnly: json['read_only'] as bool?,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReposCreateDeployKeyRequest? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return ReposCreateDeployKeyRequest.fromJson(json);
  }

  /// A name for the key.
  final String? title;

  /// The contents of the key.
  final String key;

  /// If `true`, the key will only be able to read repository contents.
  /// Otherwise, the key will be able to read and write.
  ///
  /// Deploy keys with write access can perform the same actions as an
  /// organization member with admin access, or a collaborator on a personal
  /// repository. For more information, see "[Repository permission levels for
  /// an
  /// organization](https://docs.github.com/articles/repository-permission-levels-for-an-organization/)"
  /// and "[Permission levels for a user account
  /// repository](https://docs.github.com/articles/permission-levels-for-a-user-account-repository/)."
  final bool? readOnly;

  /// Converts a [ReposCreateDeployKeyRequest] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'key': key,
      'read_only': readOnly,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    title,
    key,
    readOnly,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ReposCreateDeployKeyRequest &&
        this.title == other.title &&
        this.key == other.key &&
        this.readOnly == other.readOnly;
  }
}
