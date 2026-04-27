// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/repos_create_pages_site_request_build_type.dart';
import 'package:github_out/models/repos_create_pages_site_request_source.dart';
import 'package:meta/meta.dart';

/// {@template repos_create_pages_site_request}
/// The source branch and directory used to publish your Pages site.
/// {@endtemplate}
@immutable
class ReposCreatePagesSiteRequest {
  /// {@macro repos_create_pages_site_request}
  const ReposCreatePagesSiteRequest({
    this.buildType,
    this.source,
  });

  /// Converts a `Map<String, dynamic>` to a [ReposCreatePagesSiteRequest].
  factory ReposCreatePagesSiteRequest.fromJson(Map<String, dynamic> json) {
    return parseFromJson(
      'ReposCreatePagesSiteRequest',
      json,
      () => ReposCreatePagesSiteRequest(
        buildType: ReposCreatePagesSiteRequestBuildType.maybeFromJson(
          json['build_type'] as String?,
        ),
        source: ReposCreatePagesSiteRequestSource.maybeFromJson(
          json['source'] as Map<String, dynamic>?,
        ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReposCreatePagesSiteRequest? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return ReposCreatePagesSiteRequest.fromJson(json);
  }

  /// The process in which the Page will be built. Possible values are
  /// `"legacy"` and `"workflow"`.
  final ReposCreatePagesSiteRequestBuildType? buildType;

  /// The source branch and directory used to publish your Pages site.
  final ReposCreatePagesSiteRequestSource? source;

  /// Converts a [ReposCreatePagesSiteRequest] to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'build_type': buildType?.toJson(),
      'source': source?.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    buildType,
    source,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ReposCreatePagesSiteRequest &&
        buildType == other.buildType &&
        source == other.source;
  }
}
