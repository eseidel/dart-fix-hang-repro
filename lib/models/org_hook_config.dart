import 'package:github_out/model_helpers.dart';
import 'package:meta/meta.dart';

@immutable
class OrgHookConfig {
  const OrgHookConfig({
    this.url,
    this.insecureSsl,
    this.contentType,
    this.secret,
  });

  /// Converts a `Map<String, dynamic>` to an [OrgHookConfig].
  factory OrgHookConfig.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'OrgHookConfig',
      json,
      () => OrgHookConfig(
        url: json['url'] as String?,
        insecureSsl: json['insecure_ssl'] as String?,
        contentType: json['content_type'] as String?,
        secret: json['secret'] as String?,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static OrgHookConfig? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return OrgHookConfig.fromJson(json);
  }

  /// example: `'"http://example.com/2"'`
  final String? url;

  /// example: `'"0"'`
  final String? insecureSsl;

  /// example: `'"form"'`
  final String? contentType;

  /// example: `'"********"'`
  final String? secret;

  /// Converts an [OrgHookConfig] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'insecure_ssl': insecureSsl,
      'content_type': contentType,
      'secret': secret,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    url,
    insecureSsl,
    contentType,
    secret,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is OrgHookConfig &&
        url == other.url &&
        insecureSsl == other.insecureSsl &&
        contentType == other.contentType &&
        secret == other.secret;
  }
}
