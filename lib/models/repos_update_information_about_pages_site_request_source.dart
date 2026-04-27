// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
import 'package:github_out/models/repos_update_information_about_pages_site_request_source_any_of_0.dart';
import 'package:github_out/models/repos_update_information_about_pages_site_request_source_any_of_1.dart';
import 'package:meta/meta.dart';

sealed class ReposUpdateInformationAboutPagesSiteRequestSource {
  const ReposUpdateInformationAboutPagesSiteRequestSource();

  factory ReposUpdateInformationAboutPagesSiteRequestSource.fromJson(
    dynamic json,
  ) {
    return switch (json) {
      final String v =>
        ReposUpdateInformationAboutPagesSiteRequestSourceReposUpdateInformationAboutPagesSiteRequestSourceAnyOf0(
          ReposUpdateInformationAboutPagesSiteRequestSourceAnyOf0.fromJson(v),
        ),
      final Map<String, dynamic> v =>
        ReposUpdateInformationAboutPagesSiteRequestSourceReposUpdateInformationAboutPagesSiteRequestSourceAnyOf1(
          ReposUpdateInformationAboutPagesSiteRequestSourceAnyOf1.fromJson(v),
        ),
      _ => throw FormatException(
        'Unsupported shape for ReposUpdateInformationAboutPagesSiteRequestSource: ${json.runtimeType}',
      ),
    };
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReposUpdateInformationAboutPagesSiteRequestSource? maybeFromJson(
    dynamic json,
  ) {
    if (json == null) {
      return null;
    }
    return ReposUpdateInformationAboutPagesSiteRequestSource.fromJson(json);
  }

  /// Require all subclasses to implement toJson.
  dynamic toJson();
}

@immutable
final class ReposUpdateInformationAboutPagesSiteRequestSourceReposUpdateInformationAboutPagesSiteRequestSourceAnyOf0
    extends ReposUpdateInformationAboutPagesSiteRequestSource {
  const ReposUpdateInformationAboutPagesSiteRequestSourceReposUpdateInformationAboutPagesSiteRequestSourceAnyOf0(
    this.value,
  );

  final ReposUpdateInformationAboutPagesSiteRequestSourceAnyOf0 value;

  @override
  dynamic toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other
            is ReposUpdateInformationAboutPagesSiteRequestSourceReposUpdateInformationAboutPagesSiteRequestSourceAnyOf0 &&
        value == other.value;
  }
}

@immutable
final class ReposUpdateInformationAboutPagesSiteRequestSourceReposUpdateInformationAboutPagesSiteRequestSourceAnyOf1
    extends ReposUpdateInformationAboutPagesSiteRequestSource {
  const ReposUpdateInformationAboutPagesSiteRequestSourceReposUpdateInformationAboutPagesSiteRequestSourceAnyOf1(
    this.value,
  );

  final ReposUpdateInformationAboutPagesSiteRequestSourceAnyOf1 value;

  @override
  dynamic toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other
            is ReposUpdateInformationAboutPagesSiteRequestSourceReposUpdateInformationAboutPagesSiteRequestSourceAnyOf1 &&
        value == other.value;
  }
}
