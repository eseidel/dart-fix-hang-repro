import 'package:github_out/models/repos_set_status_check_contexts_request_one_of_0.dart';
import 'package:meta/meta.dart';

sealed class ReposSetStatusCheckContextsRequest {
  const ReposSetStatusCheckContextsRequest();

  factory ReposSetStatusCheckContextsRequest.fromJson(dynamic json) {
    return switch (json) {
      Map<String, dynamic> v =>
        ReposSetStatusCheckContextsRequestReposSetStatusCheckContextsRequestOneOf0(
          ReposSetStatusCheckContextsRequestOneOf0.fromJson(v),
        ),
      List<dynamic> v => ReposSetStatusCheckContextsRequestList(
        v.cast<String>(),
      ),
      _ => throw FormatException(
        'Unsupported shape for ReposSetStatusCheckContextsRequest: ${json.runtimeType}',
      ),
    };
  }

  /// Convenience to create a nullable type from a nullable json object.
  /// Useful when parsing optional fields.
  static ReposSetStatusCheckContextsRequest? maybeFromJson(dynamic json) {
    if (json == null) {
      return null;
    }
    return ReposSetStatusCheckContextsRequest.fromJson(json);
  }

  /// Require all subclasses to implement toJson.
  dynamic toJson();
}

@immutable
final class ReposSetStatusCheckContextsRequestReposSetStatusCheckContextsRequestOneOf0
    extends ReposSetStatusCheckContextsRequest {
  const ReposSetStatusCheckContextsRequestReposSetStatusCheckContextsRequestOneOf0(
    this.value,
  );

  final ReposSetStatusCheckContextsRequestOneOf0 value;

  @override
  dynamic toJson() => value.toJson();

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other
            is ReposSetStatusCheckContextsRequestReposSetStatusCheckContextsRequestOneOf0 &&
        value == other.value;
  }
}

@immutable
final class ReposSetStatusCheckContextsRequestList
    extends ReposSetStatusCheckContextsRequest {
  const ReposSetStatusCheckContextsRequestList(this.value);

  final List<String> value;

  @override
  dynamic toJson() => value;

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ReposSetStatusCheckContextsRequestList &&
        value == other.value;
  }
}
