import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/pages_https_certificate_state.dart';
import 'package:meta/meta.dart';

/// {@template pages_https_certificate}
/// Pages Https Certificate
/// {@endtemplate}
@immutable
class PagesHttpsCertificate {
  /// {@macro pages_https_certificate}
  PagesHttpsCertificate({
    required this.state,
    required this.description,
    required this.domains,
    this.expiresAt,
  });

  /// Converts a `Map<String, dynamic>` to a [PagesHttpsCertificate].
  factory PagesHttpsCertificate.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'PagesHttpsCertificate',
      json,
      () => PagesHttpsCertificate(
        state: PagesHttpsCertificateState.fromJson(json['state'] as String),
        description: json['description'] as String,
        domains: (json['domains'] as List).cast<String>(),
        expiresAt: maybeParseDate(json['expires_at'] as String?),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static PagesHttpsCertificate? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return PagesHttpsCertificate.fromJson(json);
  }

  /// example: `'approved'`
  final PagesHttpsCertificateState state;

  /// example: `'Certificate is approved'`
  final String description;

  /// Array of the domain set and its alternate name (if it is configured)
  /// example: `'example.com'`
  /// example: `'www.example.com'`
  final List<String> domains;
  final DateTime? expiresAt;

  /// Converts a [PagesHttpsCertificate] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'state': state.toJson(),
      'description': description,
      'domains': domains,
      'expires_at': expiresAt?.toIso8601String().substring(0, 10),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    state,
    description,
    listHash(domains),
    expiresAt,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is PagesHttpsCertificate &&
        this.state == other.state &&
        this.description == other.description &&
        listsEqual(this.domains, other.domains) &&
        this.expiresAt == other.expiresAt;
  }
}
