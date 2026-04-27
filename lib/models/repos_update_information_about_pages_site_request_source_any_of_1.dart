// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/repos_update_information_about_pages_site_request_source_any_of_1_path.dart';
import 'package:meta/meta.dart';

/// {@template repos_update_information_about_pages_site_request_source_any_of_1}
/// Update the source for the repository. Must include the branch name and path.
/// {@endtemplate}
@immutable
class ReposUpdateInformationAboutPagesSiteRequestSourceAnyOf1 {
  /// {@macro repos_update_information_about_pages_site_request_source_any_of_1}
  const ReposUpdateInformationAboutPagesSiteRequestSourceAnyOf1({
    required this.branch,
    required this.path,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [ReposUpdateInformationAboutPagesSiteRequestSourceAnyOf1].
  factory ReposUpdateInformationAboutPagesSiteRequestSourceAnyOf1.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'ReposUpdateInformationAboutPagesSiteRequestSourceAnyOf1',
      json,
      () => ReposUpdateInformationAboutPagesSiteRequestSourceAnyOf1(
        branch: json['branch'] as String,
        path:
            ReposUpdateInformationAboutPagesSiteRequestSourceAnyOf1Path.fromJson(
              json['path'] as String,
            ),
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReposUpdateInformationAboutPagesSiteRequestSourceAnyOf1? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return ReposUpdateInformationAboutPagesSiteRequestSourceAnyOf1.fromJson(
      json,
    );
  }

  /// The repository branch used to publish your site's source files.
  final String branch;

  /// The repository directory that includes the source files for the Pages
  /// site. Allowed paths are `/` or `/docs`.
  final ReposUpdateInformationAboutPagesSiteRequestSourceAnyOf1Path path;

  /// Converts a [ReposUpdateInformationAboutPagesSiteRequestSourceAnyOf1]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'branch': branch,
      'path': path.toJson(),
    };
  }

  @override
  int get hashCode => Object.hashAll([
    branch,
    path,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ReposUpdateInformationAboutPagesSiteRequestSourceAnyOf1 &&
        branch == other.branch &&
        path == other.path;
  }
}
