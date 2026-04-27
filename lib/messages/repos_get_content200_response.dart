// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
import 'package:github_out/models/content_directory_inner.dart';
import 'package:github_out/models/content_file.dart';
import 'package:github_out/models/content_submodule.dart';
import 'package:github_out/models/content_symlink.dart';
import 'package:meta/meta.dart';

sealed class ReposGetContent200Response {
  const ReposGetContent200Response();

  factory ReposGetContent200Response.fromJson(dynamic json) {
    return switch (json) {
      final List<dynamic> v => ReposGetContent200ResponseList(
        v
            .map<ContentDirectoryInner>(
              (e) => ContentDirectoryInner.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      ),
      final Map<String, dynamic> v when v.containsKey('content') =>
        ReposGetContent200ResponseContentFile(ContentFile.fromJson(v)),
      final Map<String, dynamic> v when v.containsKey('target') =>
        ReposGetContent200ResponseContentSymlink(ContentSymlink.fromJson(v)),
      final Map<String, dynamic> v when v.containsKey('submodule_git_url') =>
        ReposGetContent200ResponseContentSubmodule(
          ContentSubmodule.fromJson(v),
        ),
      final Map<String, dynamic> v => throw FormatException(
        'No variant of ReposGetContent200Response matched json keys: ${v.keys.toList()}',
      ),
      _ => throw FormatException(
        'Unsupported shape for ReposGetContent200Response: ${json.runtimeType}',
      ),
    };
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReposGetContent200Response? maybeFromJson(dynamic json) {
    if (json == null) {
      return null;
    }
    return ReposGetContent200Response.fromJson(json);
  }

  /// Require all subclasses to implement toJson.
  dynamic toJson();
}

@immutable
final class ReposGetContent200ResponseList extends ReposGetContent200Response {
  const ReposGetContent200ResponseList(this.value);

  final List<ContentDirectoryInner> value;

  @override
  dynamic toJson() => value.map((e) => e.toJson()).toList();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ReposGetContent200ResponseList && value == other.value;
  }
}

@immutable
final class ReposGetContent200ResponseContentFile
    extends ReposGetContent200Response {
  const ReposGetContent200ResponseContentFile(this.value);

  final ContentFile value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ReposGetContent200ResponseContentFile &&
        value == other.value;
  }
}

@immutable
final class ReposGetContent200ResponseContentSymlink
    extends ReposGetContent200Response {
  const ReposGetContent200ResponseContentSymlink(this.value);

  final ContentSymlink value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ReposGetContent200ResponseContentSymlink &&
        value == other.value;
  }
}

@immutable
final class ReposGetContent200ResponseContentSubmodule
    extends ReposGetContent200Response {
  const ReposGetContent200ResponseContentSubmodule(this.value);

  final ContentSubmodule value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ReposGetContent200ResponseContentSubmodule &&
        value == other.value;
  }
}
