// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
import 'package:github_out/model_helpers.dart';
import 'package:github_out/models/repository_advisory_identifiers_inner_type.dart';
import 'package:meta/meta.dart';

@immutable
class RepositoryAdvisoryIdentifiersInner {
  const RepositoryAdvisoryIdentifiersInner({
    required this.type,
    required this.value,
  });

  /// Converts a `Map<String, dynamic>` to a
  /// [RepositoryAdvisoryIdentifiersInner].
  factory RepositoryAdvisoryIdentifiersInner.fromJson(
    Map<String, dynamic> json,
  ) {
    return parseFromJson(
      'RepositoryAdvisoryIdentifiersInner',
      json,
      () => RepositoryAdvisoryIdentifiersInner(
        type: RepositoryAdvisoryIdentifiersInnerType.fromJson(
          json['type'] as String,
        ),
        value: json['value'] as String,
      ),
    );
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static RepositoryAdvisoryIdentifiersInner? maybeFromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    return RepositoryAdvisoryIdentifiersInner.fromJson(json);
  }

  /// The type of identifier.
  final RepositoryAdvisoryIdentifiersInnerType type;

  /// The identifier value.
  final String value;

  /// Converts a [RepositoryAdvisoryIdentifiersInner]
  /// to a `Map<String, dynamic>`.
  Map<String, dynamic> toJson() {
    return {
      'type': type.toJson(),
      'value': value,
    };
  }

  @override
  int get hashCode => Object.hashAll([
    type,
    value,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RepositoryAdvisoryIdentifiersInner &&
        type == other.type &&
        value == other.value;
  }
}
