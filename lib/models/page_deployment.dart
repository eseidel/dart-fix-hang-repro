import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/page_deployment_id.dart';
import 'package:meta/meta.dart';

/// {@template page_deployment}
/// GitHub Pages
/// The GitHub Pages deployment status.
/// {@endtemplate}
@immutable
class PageDeployment {
  /// {@macro page_deployment}
  PageDeployment({
    required this.id,
    required this.statusUrl,
    required this.pageUrl,
    this.previewUrl,
  });

  /// Converts a `Map<String, dynamic>` to a [PageDeployment].
  factory PageDeployment.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'PageDeployment',
      json,
      () => PageDeployment(
        id: PageDeploymentId.fromJson(json['id'] as Map<String, dynamic>),
        statusUrl: Uri.parse(json['status_url'] as String),
        pageUrl: Uri.parse(json['page_url'] as String),
        previewUrl: maybeParseUri(json['preview_url'] as String?),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static PageDeployment? maybeFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }
    return PageDeployment.fromJson(json);
  }

  /// The ID of the GitHub Pages deployment. This is the Git SHA of the
  /// deployed commit.
  final PageDeploymentId id;

  /// The URI to monitor GitHub Pages deployment status.
  /// example:
  /// `'https://api.github.com/repos/github/hello-world/pages/deployments/4fd754f7e594640989b406850d0bc8f06a121251'`
  final Uri statusUrl;

  /// The URI to the deployed GitHub Pages.
  /// example: `'hello-world.github.io'`
  final Uri pageUrl;

  /// The URI to the deployed GitHub Pages preview.
  /// example: `'monalisa-1231a2312sa32-23sda74.drafts.github.io'`
  final Uri? previewUrl;

  /// Converts a [PageDeployment] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'id': id.toJson(),
      'status_url': statusUrl.toString(),
      'page_url': pageUrl.toString(),
      'preview_url': previewUrl?.toString(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    statusUrl,
    pageUrl,
    previewUrl,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is PageDeployment &&
        this.id == other.id &&
        this.statusUrl == other.statusUrl &&
        this.pageUrl == other.pageUrl &&
        this.previewUrl == other.previewUrl;
  }
}
