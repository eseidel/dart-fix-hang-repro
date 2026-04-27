import 'package:github_out/models/repos_remove_status_check_contexts_request_one_of_0.dart';
import 'package:meta/meta.dart';

sealed class ReposRemoveStatusCheckContextsRequest {
  const ReposRemoveStatusCheckContextsRequest();

  factory ReposRemoveStatusCheckContextsRequest.fromJson(dynamic json) {
    return switch (json) {
      Map<String, dynamic> v =>
        ReposRemoveStatusCheckContextsRequestReposRemoveStatusCheckContextsRequestOneOf0(
          ReposRemoveStatusCheckContextsRequestOneOf0.fromJson(v),
        ),
      List<dynamic> v => ReposRemoveStatusCheckContextsRequestList(
        v.cast<String>(),
      ),
      _ => throw FormatException(
        'Unsupported shape for ReposRemoveStatusCheckContextsRequest: ${json.runtimeType}',
      ),
    };
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReposRemoveStatusCheckContextsRequest? maybeFromJson(dynamic json) {
    if (json == null) {
      return null;
    }
    return ReposRemoveStatusCheckContextsRequest.fromJson(json);
  }

  /// Require all subclasses to implement toJson.
  dynamic toJson();
}

@immutable
final class ReposRemoveStatusCheckContextsRequestReposRemoveStatusCheckContextsRequestOneOf0
    extends ReposRemoveStatusCheckContextsRequest {
  const ReposRemoveStatusCheckContextsRequestReposRemoveStatusCheckContextsRequestOneOf0(
    this.value,
  );

  final ReposRemoveStatusCheckContextsRequestOneOf0 value;

  @override
  dynamic toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other
            is ReposRemoveStatusCheckContextsRequestReposRemoveStatusCheckContextsRequestOneOf0 &&
        value == other.value;
  }
}

@immutable
final class ReposRemoveStatusCheckContextsRequestList
    extends ReposRemoveStatusCheckContextsRequest {
  const ReposRemoveStatusCheckContextsRequestList(this.value);

  final List<String> value;

  @override
  dynamic toJson() => value;

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ReposRemoveStatusCheckContextsRequestList &&
        value == other.value;
  }
}
