// Some OpenAPI specs flatten inline schemas into class names long
// enough that `dart format` can't keep imports and call sites under
// 80 cols as bare identifiers.
// ignore_for_file: lines_longer_than_80_chars
import 'package:github_out/models/repos_add_status_check_contexts_request_one_of_0.dart';
import 'package:meta/meta.dart';

sealed class ReposAddStatusCheckContextsRequest {
  const ReposAddStatusCheckContextsRequest();

  factory ReposAddStatusCheckContextsRequest.fromJson(dynamic json) {
    return switch (json) {
      final Map<String, dynamic> v =>
        ReposAddStatusCheckContextsRequestReposAddStatusCheckContextsRequestOneOf0(
          ReposAddStatusCheckContextsRequestOneOf0.fromJson(v),
        ),
      final List<dynamic> v => ReposAddStatusCheckContextsRequestList(
        v.cast<String>(),
      ),
      _ => throw FormatException(
        'Unsupported shape for ReposAddStatusCheckContextsRequest: ${json.runtimeType}',
      ),
    };
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReposAddStatusCheckContextsRequest? maybeFromJson(dynamic json) {
    if (json == null) {
      return null;
    }
    return ReposAddStatusCheckContextsRequest.fromJson(json);
  }

  /// Require all subclasses to implement toJson.
  dynamic toJson();
}

@immutable
final class ReposAddStatusCheckContextsRequestReposAddStatusCheckContextsRequestOneOf0
    extends ReposAddStatusCheckContextsRequest {
  const ReposAddStatusCheckContextsRequestReposAddStatusCheckContextsRequestOneOf0(
    this.value,
  );

  final ReposAddStatusCheckContextsRequestOneOf0 value;

  @override
  dynamic toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other
            is ReposAddStatusCheckContextsRequestReposAddStatusCheckContextsRequestOneOf0 &&
        value == other.value;
  }
}

@immutable
final class ReposAddStatusCheckContextsRequestList
    extends ReposAddStatusCheckContextsRequest {
  const ReposAddStatusCheckContextsRequestList(this.value);

  final List<String> value;

  @override
  dynamic toJson() => value;

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ReposAddStatusCheckContextsRequestList &&
        value == other.value;
  }
}
