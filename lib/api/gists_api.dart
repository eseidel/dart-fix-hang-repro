// Spec descriptions copy prose verbatim into dartdoc, where `[x]`
// inside a sentence (placeholder text, ALL_CAPS tokens, license
// templates) is parsed as a symbol reference even when no such
// symbol exists. Suppress file-locally so the lint stays live
// elsewhere; spec authors do not always escape brackets.
// ignore_for_file: comment_references
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:github_out/api_client.dart';
import 'package:github_out/api_exception.dart';
import 'package:github_out/messages/forbidden_gist_response.dart';
import 'package:github_out/messages/gists_check_is_starred404_response.dart';
import 'package:github_out/messages/gists_create_comment_request.dart';
import 'package:github_out/messages/gists_create_request.dart';
import 'package:github_out/messages/gists_update_comment_request.dart';
import 'package:github_out/messages/gists_update_request.dart';
import 'package:github_out/models/author_association.dart';
import 'package:github_out/models/base_gist.dart';
import 'package:github_out/models/base_gist_files.dart';
import 'package:github_out/models/basic_error.dart';
import 'package:github_out/models/forbidden_gist_response_block.dart';
import 'package:github_out/models/gist_comment.dart';
import 'package:github_out/models/gist_commit.dart';
import 'package:github_out/models/gist_commit_change_status.dart';
import 'package:github_out/models/gist_history.dart';
import 'package:github_out/models/gist_history_change_status.dart';
import 'package:github_out/models/gist_simple.dart';
import 'package:github_out/models/gist_simple_files.dart';
import 'package:github_out/models/gist_simple_fork_of.dart';
import 'package:github_out/models/gist_simple_fork_of_files.dart';
import 'package:github_out/models/gist_simple_forks_inner.dart';
import 'package:github_out/models/gists_create_request_files.dart';
import 'package:github_out/models/gists_create_request_public.dart';
import 'package:github_out/models/gists_create_request_public_one_of_1.dart';
import 'package:github_out/models/gists_update_request_files.dart';
import 'package:github_out/models/public_user.dart';
import 'package:github_out/models/public_user_plan.dart';
import 'package:github_out/models/simple_user.dart';
import 'package:github_out/models/validation_error.dart';
import 'package:github_out/models/validation_error_errors_inner.dart';
import 'package:github_out/models/validation_error_errors_inner_value.dart';
import 'package:http/http.dart' as http;

/// View, modify your gists.
class GistsApi {
  GistsApi(ApiClient? client) : client = client ?? ApiClient();

  final ApiClient client;

  /// List gists for the authenticated user
  /// Lists the authenticated user's gists or if called anonymously, this
  /// endpoint returns all public gists:
  Future<List<BaseGist>> list({
    DateTime? since,
    int? perPage = 30,
    int? page = 1,
  }) async {
    final response = await client.invokeApi(
      method: Method.get,
      path: '/gists',
      queryParameters: {
        if (since != null) 'since': [since.toIso8601String().toString()],
        if (perPage != null) 'per_page': [perPage.toString()],
        if (page != null) 'page': [page.toString()],
      },
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }

    if (response.body.isNotEmpty) {
      return (jsonDecode(response.body) as List)
          .map<BaseGist>((e) => BaseGist.fromJson(e as Map<String, dynamic>))
          .toList();
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// Create a gist
  /// Allows you to add a new gist with one or more files.
  ///
  /// > [!NOTE]
  /// > Don't name your files "gistfile" with a numerical suffix. This is the
  /// format of the automatic naming scheme that Gist uses internally.
  Future<GistSimple> create(
    GistsCreateRequest gistsCreateRequest,
  ) async {
    final response = await client.invokeApi(
      method: Method.post,
      path: '/gists',
      body: gistsCreateRequest.toJson(),
      bodyContentType: BodyContentType.json,
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }

    if (response.body.isNotEmpty) {
      return GistSimple.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// List public gists
  /// List public gists sorted by most recently updated to least recently
  /// updated.
  ///
  /// Note: With
  /// [pagination](https://docs.github.com/rest/guides/using-pagination-in-the-rest-api),
  /// you can fetch up to 3000 gists. For example, you can fetch 100 pages
  /// with 30 gists per page or 30 pages with 100 gists per page.
  Future<List<BaseGist>> listPublic({
    DateTime? since,
    int? perPage = 30,
    int? page = 1,
  }) async {
    final response = await client.invokeApi(
      method: Method.get,
      path: '/gists/public',
      queryParameters: {
        if (since != null) 'since': [since.toIso8601String().toString()],
        if (perPage != null) 'per_page': [perPage.toString()],
        if (page != null) 'page': [page.toString()],
      },
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }

    if (response.body.isNotEmpty) {
      return (jsonDecode(response.body) as List)
          .map<BaseGist>((e) => BaseGist.fromJson(e as Map<String, dynamic>))
          .toList();
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// List starred gists
  /// List the authenticated user's starred gists:
  Future<List<BaseGist>> listStarred({
    DateTime? since,
    int? perPage = 30,
    int? page = 1,
  }) async {
    final response = await client.invokeApi(
      method: Method.get,
      path: '/gists/starred',
      queryParameters: {
        if (since != null) 'since': [since.toIso8601String().toString()],
        if (perPage != null) 'per_page': [perPage.toString()],
        if (page != null) 'page': [page.toString()],
      },
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }

    if (response.body.isNotEmpty) {
      return (jsonDecode(response.body) as List)
          .map<BaseGist>((e) => BaseGist.fromJson(e as Map<String, dynamic>))
          .toList();
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// Get a gist
  /// Gets a specified gist.
  ///
  /// This endpoint supports the following custom media types. For more
  /// information, see "[Media
  /// types](https://docs.github.com/rest/using-the-rest-api/getting-started-with-the-rest-api#media-types)."
  ///
  /// - **`application/vnd.github.raw+json`**: Returns the raw markdown. This
  /// is the default if you do not pass any specific media type.
  /// - **`application/vnd.github.base64+json`**: Returns the base64-encoded
  /// contents. This can be useful if your gist contains any invalid UTF-8
  /// sequences.
  Future<GistSimple> get(
    String gistId,
  ) async {
    final response = await client.invokeApi(
      method: Method.get,
      path: '/gists/{gist_id}'.replaceAll('{gist_id}', '${gistId}'),
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }

    if (response.body.isNotEmpty) {
      return GistSimple.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// Delete a gist
  ///
  Future<void> delete(
    String gistId,
  ) async {
    final response = await client.invokeApi(
      method: Method.delete,
      path: '/gists/{gist_id}'.replaceAll('{gist_id}', '${gistId}'),
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }
  }

  /// Update a gist
  /// Allows you to update a gist's description and to update, delete, or
  /// rename gist files. Files
  /// from the previous version of the gist that aren't explicitly changed
  /// during an edit
  /// are unchanged.
  ///
  /// At least one of `description` or `files` is required.
  ///
  /// This endpoint supports the following custom media types. For more
  /// information, see "[Media
  /// types](https://docs.github.com/rest/using-the-rest-api/getting-started-with-the-rest-api#media-types)."
  ///
  /// - **`application/vnd.github.raw+json`**: Returns the raw markdown. This
  /// is the default if you do not pass any specific media type.
  /// - **`application/vnd.github.base64+json`**: Returns the base64-encoded
  /// contents. This can be useful if your gist contains any invalid UTF-8
  /// sequences.
  Future<GistSimple> update(
    String gistId,
    GistsUpdateRequest gistsUpdateRequest,
  ) async {
    final response = await client.invokeApi(
      method: Method.patch,
      path: '/gists/{gist_id}'.replaceAll('{gist_id}', '${gistId}'),
      body: gistsUpdateRequest.toJson(),
      bodyContentType: BodyContentType.json,
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }

    if (response.body.isNotEmpty) {
      return GistSimple.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// List gist comments
  /// Lists the comments on a gist.
  ///
  /// This endpoint supports the following custom media types. For more
  /// information, see "[Media
  /// types](https://docs.github.com/rest/using-the-rest-api/getting-started-with-the-rest-api#media-types)."
  ///
  /// - **`application/vnd.github.raw+json`**: Returns the raw markdown. This
  /// is the default if you do not pass any specific media type.
  /// - **`application/vnd.github.base64+json`**: Returns the base64-encoded
  /// contents. This can be useful if your gist contains any invalid UTF-8
  /// sequences.
  Future<List<GistComment>> listComments(
    String gistId, {
    int? perPage = 30,
    int? page = 1,
  }) async {
    final response = await client.invokeApi(
      method: Method.get,
      path: '/gists/{gist_id}/comments'.replaceAll('{gist_id}', '${gistId}'),
      queryParameters: {
        if (perPage != null) 'per_page': [perPage.toString()],
        if (page != null) 'page': [page.toString()],
      },
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }

    if (response.body.isNotEmpty) {
      return (jsonDecode(response.body) as List)
          .map<GistComment>(
            (e) => GistComment.fromJson(e as Map<String, dynamic>),
          )
          .toList();
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// Create a gist comment
  /// Creates a comment on a gist.
  ///
  /// This endpoint supports the following custom media types. For more
  /// information, see "[Media
  /// types](https://docs.github.com/rest/using-the-rest-api/getting-started-with-the-rest-api#media-types)."
  ///
  /// - **`application/vnd.github.raw+json`**: Returns the raw markdown. This
  /// is the default if you do not pass any specific media type.
  /// - **`application/vnd.github.base64+json`**: Returns the base64-encoded
  /// contents. This can be useful if your gist contains any invalid UTF-8
  /// sequences.
  Future<GistComment> createComment(
    String gistId,
    GistsCreateCommentRequest gistsCreateCommentRequest,
  ) async {
    final response = await client.invokeApi(
      method: Method.post,
      path: '/gists/{gist_id}/comments'.replaceAll('{gist_id}', '${gistId}'),
      body: gistsCreateCommentRequest.toJson(),
      bodyContentType: BodyContentType.json,
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }

    if (response.body.isNotEmpty) {
      return GistComment.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// Get a gist comment
  /// Gets a comment on a gist.
  ///
  /// This endpoint supports the following custom media types. For more
  /// information, see "[Media
  /// types](https://docs.github.com/rest/using-the-rest-api/getting-started-with-the-rest-api#media-types)."
  ///
  /// - **`application/vnd.github.raw+json`**: Returns the raw markdown. This
  /// is the default if you do not pass any specific media type.
  /// - **`application/vnd.github.base64+json`**: Returns the base64-encoded
  /// contents. This can be useful if your gist contains any invalid UTF-8
  /// sequences.
  Future<GistComment> getComment(
    String gistId,
    int commentId,
  ) async {
    final response = await client.invokeApi(
      method: Method.get,
      path: '/gists/{gist_id}/comments/{comment_id}'
          .replaceAll('{gist_id}', '${gistId}')
          .replaceAll('{comment_id}', '${commentId}'),
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }

    if (response.body.isNotEmpty) {
      return GistComment.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// Delete a gist comment
  ///
  Future<void> deleteComment(
    String gistId,
    int commentId,
  ) async {
    final response = await client.invokeApi(
      method: Method.delete,
      path: '/gists/{gist_id}/comments/{comment_id}'
          .replaceAll('{gist_id}', '${gistId}')
          .replaceAll('{comment_id}', '${commentId}'),
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }
  }

  /// Update a gist comment
  /// Updates a comment on a gist.
  ///
  /// This endpoint supports the following custom media types. For more
  /// information, see "[Media
  /// types](https://docs.github.com/rest/using-the-rest-api/getting-started-with-the-rest-api#media-types)."
  ///
  /// - **`application/vnd.github.raw+json`**: Returns the raw markdown. This
  /// is the default if you do not pass any specific media type.
  /// - **`application/vnd.github.base64+json`**: Returns the base64-encoded
  /// contents. This can be useful if your gist contains any invalid UTF-8
  /// sequences.
  Future<GistComment> updateComment(
    String gistId,
    int commentId,
    GistsUpdateCommentRequest gistsUpdateCommentRequest,
  ) async {
    final response = await client.invokeApi(
      method: Method.patch,
      path: '/gists/{gist_id}/comments/{comment_id}'
          .replaceAll('{gist_id}', '${gistId}')
          .replaceAll('{comment_id}', '${commentId}'),
      body: gistsUpdateCommentRequest.toJson(),
      bodyContentType: BodyContentType.json,
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }

    if (response.body.isNotEmpty) {
      return GistComment.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// List gist commits
  ///
  Future<List<GistCommit>> listCommits(
    String gistId, {
    int? perPage = 30,
    int? page = 1,
  }) async {
    final response = await client.invokeApi(
      method: Method.get,
      path: '/gists/{gist_id}/commits'.replaceAll('{gist_id}', '${gistId}'),
      queryParameters: {
        if (perPage != null) 'per_page': [perPage.toString()],
        if (page != null) 'page': [page.toString()],
      },
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }

    if (response.body.isNotEmpty) {
      return (jsonDecode(response.body) as List)
          .map<GistCommit>(
            (e) => GistCommit.fromJson(e as Map<String, dynamic>),
          )
          .toList();
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// List gist forks
  ///
  Future<List<GistSimple>> listForks(
    String gistId, {
    int? perPage = 30,
    int? page = 1,
  }) async {
    final response = await client.invokeApi(
      method: Method.get,
      path: '/gists/{gist_id}/forks'.replaceAll('{gist_id}', '${gistId}'),
      queryParameters: {
        if (perPage != null) 'per_page': [perPage.toString()],
        if (page != null) 'page': [page.toString()],
      },
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }

    if (response.body.isNotEmpty) {
      return (jsonDecode(response.body) as List)
          .map<GistSimple>(
            (e) => GistSimple.fromJson(e as Map<String, dynamic>),
          )
          .toList();
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// Fork a gist
  ///
  Future<BaseGist> fork(
    String gistId,
  ) async {
    final response = await client.invokeApi(
      method: Method.post,
      path: '/gists/{gist_id}/forks'.replaceAll('{gist_id}', '${gistId}'),
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }

    if (response.body.isNotEmpty) {
      return BaseGist.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// Check if a gist is starred
  ///
  Future<void> checkIsStarred(
    String gistId,
  ) async {
    final response = await client.invokeApi(
      method: Method.get,
      path: '/gists/{gist_id}/star'.replaceAll('{gist_id}', '${gistId}'),
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }
  }

  /// Star a gist
  /// Note that you'll need to set `Content-Length` to zero when calling out
  /// to this endpoint. For more information, see "[HTTP
  /// method](https://docs.github.com/rest/guides/getting-started-with-the-rest-api#http-method)."
  Future<void> star(
    String gistId,
  ) async {
    final response = await client.invokeApi(
      method: Method.put,
      path: '/gists/{gist_id}/star'.replaceAll('{gist_id}', '${gistId}'),
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }
  }

  /// Unstar a gist
  ///
  Future<void> unstar(
    String gistId,
  ) async {
    final response = await client.invokeApi(
      method: Method.delete,
      path: '/gists/{gist_id}/star'.replaceAll('{gist_id}', '${gistId}'),
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }
  }

  /// Get a gist revision
  /// Gets a specified gist revision.
  ///
  /// This endpoint supports the following custom media types. For more
  /// information, see "[Media
  /// types](https://docs.github.com/rest/using-the-rest-api/getting-started-with-the-rest-api#media-types)."
  ///
  /// - **`application/vnd.github.raw+json`**: Returns the raw markdown. This
  /// is the default if you do not pass any specific media type.
  /// - **`application/vnd.github.base64+json`**: Returns the base64-encoded
  /// contents. This can be useful if your gist contains any invalid UTF-8
  /// sequences.
  Future<GistSimple> getRevision(
    String gistId,
    String sha,
  ) async {
    final response = await client.invokeApi(
      method: Method.get,
      path: '/gists/{gist_id}/{sha}'
          .replaceAll('{gist_id}', '${gistId}')
          .replaceAll('{sha}', '${sha}'),
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }

    if (response.body.isNotEmpty) {
      return GistSimple.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// List gists for a user
  /// Lists public gists for the specified user:
  Future<List<BaseGist>> listForUser(
    String username, {
    DateTime? since,
    int? perPage = 30,
    int? page = 1,
  }) async {
    final response = await client.invokeApi(
      method: Method.get,
      path: '/users/{username}/gists'.replaceAll('{username}', '${username}'),
      queryParameters: {
        if (since != null) 'since': [since.toIso8601String().toString()],
        if (perPage != null) 'per_page': [perPage.toString()],
        if (page != null) 'page': [page.toString()],
      },
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }

    if (response.body.isNotEmpty) {
      return (jsonDecode(response.body) as List)
          .map<BaseGist>((e) => BaseGist.fromJson(e as Map<String, dynamic>))
          .toList();
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }
}
