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
import 'package:github_out/messages/projects_add_collaborator_request.dart';
import 'package:github_out/messages/projects_create_card422_response.dart';
import 'package:github_out/messages/projects_create_card503_response.dart';
import 'package:github_out/messages/projects_create_card_request.dart';
import 'package:github_out/messages/projects_create_column_request.dart';
import 'package:github_out/messages/projects_create_for_authenticated_user_request.dart';
import 'package:github_out/messages/projects_create_for_org_request.dart';
import 'package:github_out/messages/projects_create_for_repo_request.dart';
import 'package:github_out/messages/projects_delete403_response.dart';
import 'package:github_out/messages/projects_delete_card403_response.dart';
import 'package:github_out/messages/projects_move_card201_response.dart';
import 'package:github_out/messages/projects_move_card403_response.dart';
import 'package:github_out/messages/projects_move_card503_response.dart';
import 'package:github_out/messages/projects_move_card_request.dart';
import 'package:github_out/messages/projects_move_column201_response.dart';
import 'package:github_out/messages/projects_move_column_request.dart';
import 'package:github_out/messages/projects_update403_response.dart';
import 'package:github_out/messages/projects_update_card_request.dart';
import 'package:github_out/messages/projects_update_column_request.dart';
import 'package:github_out/messages/projects_update_request.dart';
import 'package:github_out/models/basic_error.dart';
import 'package:github_out/models/project.dart';
import 'package:github_out/models/project_card.dart';
import 'package:github_out/models/project_collaborator_permission.dart';
import 'package:github_out/models/project_column.dart';
import 'package:github_out/models/project_organization_permission.dart';
import 'package:github_out/models/projects_add_collaborator_request_permission.dart';
import 'package:github_out/models/projects_create_card503_response_errors_inner.dart';
import 'package:github_out/models/projects_create_card_request_one_of_0.dart';
import 'package:github_out/models/projects_create_card_request_one_of_1.dart';
import 'package:github_out/models/projects_list_cards_parameter1.dart';
import 'package:github_out/models/projects_list_collaborators_parameter1.dart';
import 'package:github_out/models/projects_list_for_org_parameter1.dart';
import 'package:github_out/models/projects_list_for_repo_parameter2.dart';
import 'package:github_out/models/projects_list_for_user_parameter1.dart';
import 'package:github_out/models/projects_move_card403_response_errors_inner.dart';
import 'package:github_out/models/projects_move_card503_response_errors_inner.dart';
import 'package:github_out/models/projects_update_request_organization_permission.dart';
import 'package:github_out/models/simple_user.dart';
import 'package:github_out/models/validation_error.dart';
import 'package:github_out/models/validation_error_errors_inner.dart';
import 'package:github_out/models/validation_error_errors_inner_value.dart';
import 'package:github_out/models/validation_error_simple.dart';
import 'package:http/http.dart' as http;

/// Interact with GitHub Projects.
class ProjectsApi {
  ProjectsApi(ApiClient? client) : client = client ?? ApiClient();

  final ApiClient client;

  /// List organization projects
  /// > [!WARNING]
  /// > **Closing down notice:** Projects (classic) is being deprecated in
  /// favor of the new Projects experience.
  /// > See the
  /// [changelog](https://github.blog/changelog/2024-05-23-sunset-notice-projects-classic/)
  /// for more information.
  Future<List<Project>> listForOrg(
    String org, {
    ProjectsListForOrgParameter1? state,
    int? perPage = 30,
    int? page = 1,
  }) async {
    final response = await client.invokeApi(
      method: Method.get,
      path: '/orgs/{org}/projects'.replaceAll('{org}', '${org}'),
      queryParameters: {
        if (state != null) 'state': [state.toJson().toString()],
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
          .map<Project>((e) => Project.fromJson(e as Map<String, dynamic>))
          .toList();
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// Create an organization project
  /// > [!WARNING]
  /// > **Closing down notice:** Projects (classic) is being deprecated in
  /// favor of the new Projects experience.
  /// > See the
  /// [changelog](https://github.blog/changelog/2024-05-23-sunset-notice-projects-classic/)
  /// for more information.
  Future<Project> createForOrg(
    String org,
    ProjectsCreateForOrgRequest projectsCreateForOrgRequest,
  ) async {
    final response = await client.invokeApi(
      method: Method.post,
      path: '/orgs/{org}/projects'.replaceAll('{org}', '${org}'),
      body: projectsCreateForOrgRequest.toJson(),
      bodyContentType: BodyContentType.json,
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }

    if (response.body.isNotEmpty) {
      return Project.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// Get a project card
  /// > [!WARNING]
  /// > **Closing down notice:** Projects (classic) is being deprecated in
  /// favor of the new Projects experience.
  /// > See the
  /// [changelog](https://github.blog/changelog/2024-05-23-sunset-notice-projects-classic/)
  /// for more information.
  Future<ProjectCard> getCard(
    int cardId,
  ) async {
    final response = await client.invokeApi(
      method: Method.get,
      path: '/projects/columns/cards/{card_id}'.replaceAll(
        '{card_id}',
        '${cardId}',
      ),
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }

    if (response.body.isNotEmpty) {
      return ProjectCard.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// Delete a project card
  /// > [!WARNING]
  /// > **Closing down notice:** Projects (classic) is being deprecated in
  /// favor of the new Projects experience.
  /// > See the
  /// [changelog](https://github.blog/changelog/2024-05-23-sunset-notice-projects-classic/)
  /// for more information.
  Future<void> deleteCard(
    int cardId,
  ) async {
    final response = await client.invokeApi(
      method: Method.delete,
      path: '/projects/columns/cards/{card_id}'.replaceAll(
        '{card_id}',
        '${cardId}',
      ),
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }
  }

  /// Update an existing project card
  /// > [!WARNING]
  /// > **Closing down notice:** Projects (classic) is being deprecated in
  /// favor of the new Projects experience.
  /// > See the
  /// [changelog](https://github.blog/changelog/2024-05-23-sunset-notice-projects-classic/)
  /// for more information.
  Future<ProjectCard> updateCard(
    int cardId, {
    ProjectsUpdateCardRequest? projectsUpdateCardRequest,
  }) async {
    final response = await client.invokeApi(
      method: Method.patch,
      path: '/projects/columns/cards/{card_id}'.replaceAll(
        '{card_id}',
        '${cardId}',
      ),
      body: projectsUpdateCardRequest?.toJson(),
      bodyContentType: BodyContentType.json,
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }

    if (response.body.isNotEmpty) {
      return ProjectCard.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// Move a project card
  /// > [!WARNING]
  /// > **Closing down notice:** Projects (classic) is being deprecated in
  /// favor of the new Projects experience.
  /// > See the
  /// [changelog](https://github.blog/changelog/2024-05-23-sunset-notice-projects-classic/)
  /// for more information.
  Future<ProjectsMoveCard201Response> moveCard(
    int cardId,
    ProjectsMoveCardRequest projectsMoveCardRequest,
  ) async {
    final response = await client.invokeApi(
      method: Method.post,
      path: '/projects/columns/cards/{card_id}/moves'.replaceAll(
        '{card_id}',
        '${cardId}',
      ),
      body: projectsMoveCardRequest.toJson(),
      bodyContentType: BodyContentType.json,
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }

    if (response.body.isNotEmpty) {
      return const ProjectsMoveCard201Response();
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// Get a project column
  /// > [!WARNING]
  /// > **Closing down notice:** Projects (classic) is being deprecated in
  /// favor of the new Projects experience.
  /// > See the
  /// [changelog](https://github.blog/changelog/2024-05-23-sunset-notice-projects-classic/)
  /// for more information.
  Future<ProjectColumn> getColumn(
    int columnId,
  ) async {
    final response = await client.invokeApi(
      method: Method.get,
      path: '/projects/columns/{column_id}'.replaceAll(
        '{column_id}',
        '${columnId}',
      ),
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }

    if (response.body.isNotEmpty) {
      return ProjectColumn.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// Delete a project column
  /// > [!WARNING]
  /// > **Closing down notice:** Projects (classic) is being deprecated in
  /// favor of the new Projects experience.
  /// > See the
  /// [changelog](https://github.blog/changelog/2024-05-23-sunset-notice-projects-classic/)
  /// for more information.
  Future<void> deleteColumn(
    int columnId,
  ) async {
    final response = await client.invokeApi(
      method: Method.delete,
      path: '/projects/columns/{column_id}'.replaceAll(
        '{column_id}',
        '${columnId}',
      ),
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }
  }

  /// Update an existing project column
  /// > [!WARNING]
  /// > **Closing down notice:** Projects (classic) is being deprecated in
  /// favor of the new Projects experience.
  /// > See the
  /// [changelog](https://github.blog/changelog/2024-05-23-sunset-notice-projects-classic/)
  /// for more information.
  Future<ProjectColumn> updateColumn(
    int columnId,
    ProjectsUpdateColumnRequest projectsUpdateColumnRequest,
  ) async {
    final response = await client.invokeApi(
      method: Method.patch,
      path: '/projects/columns/{column_id}'.replaceAll(
        '{column_id}',
        '${columnId}',
      ),
      body: projectsUpdateColumnRequest.toJson(),
      bodyContentType: BodyContentType.json,
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }

    if (response.body.isNotEmpty) {
      return ProjectColumn.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// List project cards
  /// > [!WARNING]
  /// > **Closing down notice:** Projects (classic) is being deprecated in
  /// favor of the new Projects experience.
  /// > See the
  /// [changelog](https://github.blog/changelog/2024-05-23-sunset-notice-projects-classic/)
  /// for more information.
  Future<List<ProjectCard>> listCards(
    int columnId, {
    ProjectsListCardsParameter1? archivedState,
    int? perPage = 30,
    int? page = 1,
  }) async {
    final response = await client.invokeApi(
      method: Method.get,
      path: '/projects/columns/{column_id}/cards'.replaceAll(
        '{column_id}',
        '${columnId}',
      ),
      queryParameters: {
        if (archivedState != null)
          'archived_state': [archivedState.toJson().toString()],
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
          .map<ProjectCard>(
            (e) => ProjectCard.fromJson(e as Map<String, dynamic>),
          )
          .toList();
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// Create a project card
  /// > [!WARNING]
  /// > **Closing down notice:** Projects (classic) is being deprecated in
  /// favor of the new Projects experience.
  /// > See the
  /// [changelog](https://github.blog/changelog/2024-05-23-sunset-notice-projects-classic/)
  /// for more information.
  Future<ProjectCard> createCard(
    int columnId,
    ProjectsCreateCardRequest projectsCreateCardRequest,
  ) async {
    final response = await client.invokeApi(
      method: Method.post,
      path: '/projects/columns/{column_id}/cards'.replaceAll(
        '{column_id}',
        '${columnId}',
      ),
      body: projectsCreateCardRequest.toJson(),
      bodyContentType: BodyContentType.json,
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }

    if (response.body.isNotEmpty) {
      return ProjectCard.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// Move a project column
  /// > [!WARNING]
  /// > **Closing down notice:** Projects (classic) is being deprecated in
  /// favor of the new Projects experience.
  /// > See the
  /// [changelog](https://github.blog/changelog/2024-05-23-sunset-notice-projects-classic/)
  /// for more information.
  Future<ProjectsMoveColumn201Response> moveColumn(
    int columnId,
    ProjectsMoveColumnRequest projectsMoveColumnRequest,
  ) async {
    final response = await client.invokeApi(
      method: Method.post,
      path: '/projects/columns/{column_id}/moves'.replaceAll(
        '{column_id}',
        '${columnId}',
      ),
      body: projectsMoveColumnRequest.toJson(),
      bodyContentType: BodyContentType.json,
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }

    if (response.body.isNotEmpty) {
      return const ProjectsMoveColumn201Response();
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// Get a project
  /// > [!WARNING]
  /// > **Closing down notice:** Projects (classic) is being deprecated in
  /// favor of the new Projects experience.
  /// > See the
  /// [changelog](https://github.blog/changelog/2024-05-23-sunset-notice-projects-classic/)
  /// for more information.
  Future<Project> get(
    int projectId,
  ) async {
    final response = await client.invokeApi(
      method: Method.get,
      path: '/projects/{project_id}'.replaceAll('{project_id}', '${projectId}'),
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }

    if (response.body.isNotEmpty) {
      return Project.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// Delete a project
  /// > [!WARNING]
  /// > **Closing down notice:** Projects (classic) is being deprecated in
  /// favor of the new Projects experience.
  /// > See the
  /// [changelog](https://github.blog/changelog/2024-05-23-sunset-notice-projects-classic/)
  /// for more information.
  Future<void> delete(
    int projectId,
  ) async {
    final response = await client.invokeApi(
      method: Method.delete,
      path: '/projects/{project_id}'.replaceAll('{project_id}', '${projectId}'),
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }
  }

  /// Update a project
  /// > [!WARNING]
  /// > **Closing down notice:** Projects (classic) is being deprecated in
  /// favor of the new Projects experience.
  /// > See the
  /// [changelog](https://github.blog/changelog/2024-05-23-sunset-notice-projects-classic/)
  /// for more information.
  Future<Project> update(
    int projectId, {
    ProjectsUpdateRequest? projectsUpdateRequest,
  }) async {
    final response = await client.invokeApi(
      method: Method.patch,
      path: '/projects/{project_id}'.replaceAll('{project_id}', '${projectId}'),
      body: projectsUpdateRequest?.toJson(),
      bodyContentType: BodyContentType.json,
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }

    if (response.body.isNotEmpty) {
      return Project.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// List project collaborators
  /// > [!WARNING]
  /// > **Closing down notice:** Projects (classic) is being deprecated in
  /// favor of the new Projects experience.
  /// > See the
  /// [changelog](https://github.blog/changelog/2024-05-23-sunset-notice-projects-classic/)
  /// for more information.
  Future<List<SimpleUser>> listCollaborators(
    int projectId, {
    ProjectsListCollaboratorsParameter1? affiliation,
    int? perPage = 30,
    int? page = 1,
  }) async {
    final response = await client.invokeApi(
      method: Method.get,
      path: '/projects/{project_id}/collaborators'.replaceAll(
        '{project_id}',
        '${projectId}',
      ),
      queryParameters: {
        if (affiliation != null)
          'affiliation': [affiliation.toJson().toString()],
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
          .map<SimpleUser>(
            (e) => SimpleUser.fromJson(e as Map<String, dynamic>),
          )
          .toList();
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// Add project collaborator
  /// > [!WARNING]
  /// > **Closing down notice:** Projects (classic) is being deprecated in
  /// favor of the new Projects experience.
  /// > See the
  /// [changelog](https://github.blog/changelog/2024-05-23-sunset-notice-projects-classic/)
  /// for more information.
  Future<void> addCollaborator(
    int projectId,
    String username, {
    ProjectsAddCollaboratorRequest? projectsAddCollaboratorRequest,
  }) async {
    final response = await client.invokeApi(
      method: Method.put,
      path: '/projects/{project_id}/collaborators/{username}'
          .replaceAll('{project_id}', '${projectId}')
          .replaceAll('{username}', '${username}'),
      body: projectsAddCollaboratorRequest?.toJson(),
      bodyContentType: BodyContentType.json,
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }
  }

  /// Remove user as a collaborator
  /// > [!WARNING]
  /// > **Closing down notice:** Projects (classic) is being deprecated in
  /// favor of the new Projects experience.
  /// > See the
  /// [changelog](https://github.blog/changelog/2024-05-23-sunset-notice-projects-classic/)
  /// for more information.
  Future<void> removeCollaborator(
    int projectId,
    String username,
  ) async {
    final response = await client.invokeApi(
      method: Method.delete,
      path: '/projects/{project_id}/collaborators/{username}'
          .replaceAll('{project_id}', '${projectId}')
          .replaceAll('{username}', '${username}'),
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }
  }

  /// Get project permission for a user
  /// > [!WARNING]
  /// > **Closing down notice:** Projects (classic) is being deprecated in
  /// favor of the new Projects experience.
  /// > See the
  /// [changelog](https://github.blog/changelog/2024-05-23-sunset-notice-projects-classic/)
  /// for more information.
  Future<ProjectCollaboratorPermission> getPermissionForUser(
    int projectId,
    String username,
  ) async {
    final response = await client.invokeApi(
      method: Method.get,
      path: '/projects/{project_id}/collaborators/{username}/permission'
          .replaceAll('{project_id}', '${projectId}')
          .replaceAll('{username}', '${username}'),
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }

    if (response.body.isNotEmpty) {
      return ProjectCollaboratorPermission.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// List project columns
  /// > [!WARNING]
  /// > **Closing down notice:** Projects (classic) is being deprecated in
  /// favor of the new Projects experience.
  /// > See the
  /// [changelog](https://github.blog/changelog/2024-05-23-sunset-notice-projects-classic/)
  /// for more information.
  Future<List<ProjectColumn>> listColumns(
    int projectId, {
    int? perPage = 30,
    int? page = 1,
  }) async {
    final response = await client.invokeApi(
      method: Method.get,
      path: '/projects/{project_id}/columns'.replaceAll(
        '{project_id}',
        '${projectId}',
      ),
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
          .map<ProjectColumn>(
            (e) => ProjectColumn.fromJson(e as Map<String, dynamic>),
          )
          .toList();
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// Create a project column
  /// > [!WARNING]
  /// > **Closing down notice:** Projects (classic) is being deprecated in
  /// favor of the new Projects experience.
  /// > See the
  /// [changelog](https://github.blog/changelog/2024-05-23-sunset-notice-projects-classic/)
  /// for more information.
  Future<ProjectColumn> createColumn(
    int projectId,
    ProjectsCreateColumnRequest projectsCreateColumnRequest,
  ) async {
    final response = await client.invokeApi(
      method: Method.post,
      path: '/projects/{project_id}/columns'.replaceAll(
        '{project_id}',
        '${projectId}',
      ),
      body: projectsCreateColumnRequest.toJson(),
      bodyContentType: BodyContentType.json,
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }

    if (response.body.isNotEmpty) {
      return ProjectColumn.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// List repository projects
  /// > [!WARNING]
  /// > **Closing down notice:** Projects (classic) is being deprecated in
  /// favor of the new Projects experience.
  /// > See the
  /// [changelog](https://github.blog/changelog/2024-05-23-sunset-notice-projects-classic/)
  /// for more information.
  Future<List<Project>> listForRepo(
    String owner,
    String repo, {
    ProjectsListForRepoParameter2? state,
    int? perPage = 30,
    int? page = 1,
  }) async {
    final response = await client.invokeApi(
      method: Method.get,
      path: '/repos/{owner}/{repo}/projects'
          .replaceAll('{owner}', '${owner}')
          .replaceAll('{repo}', '${repo}'),
      queryParameters: {
        if (state != null) 'state': [state.toJson().toString()],
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
          .map<Project>((e) => Project.fromJson(e as Map<String, dynamic>))
          .toList();
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// Create a repository project
  /// > [!WARNING]
  /// > **Closing down notice:** Projects (classic) is being deprecated in
  /// favor of the new Projects experience.
  /// > See the
  /// [changelog](https://github.blog/changelog/2024-05-23-sunset-notice-projects-classic/)
  /// for more information.
  Future<Project> createForRepo(
    String owner,
    String repo,
    ProjectsCreateForRepoRequest projectsCreateForRepoRequest,
  ) async {
    final response = await client.invokeApi(
      method: Method.post,
      path: '/repos/{owner}/{repo}/projects'
          .replaceAll('{owner}', '${owner}')
          .replaceAll('{repo}', '${repo}'),
      body: projectsCreateForRepoRequest.toJson(),
      bodyContentType: BodyContentType.json,
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }

    if (response.body.isNotEmpty) {
      return Project.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// Create a user project
  /// > [!WARNING]
  /// > **Closing down notice:** Projects (classic) is being deprecated in
  /// favor of the new Projects experience.
  /// > See the
  /// [changelog](https://github.blog/changelog/2024-05-23-sunset-notice-projects-classic/)
  /// for more information.
  Future<Project> createForAuthenticatedUser(
    ProjectsCreateForAuthenticatedUserRequest
    projectsCreateForAuthenticatedUserRequest,
  ) async {
    final response = await client.invokeApi(
      method: Method.post,
      path: '/user/projects',
      body: projectsCreateForAuthenticatedUserRequest.toJson(),
      bodyContentType: BodyContentType.json,
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException<Object?>(
        response.statusCode,
        response.body.toString(),
      );
    }

    if (response.body.isNotEmpty) {
      return Project.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }

  /// List user projects
  /// > [!WARNING]
  /// > **Closing down notice:** Projects (classic) is being deprecated in
  /// favor of the new Projects experience.
  /// > See the
  /// [changelog](https://github.blog/changelog/2024-05-23-sunset-notice-projects-classic/)
  /// for more information.
  Future<List<Project>> listForUser(
    String username, {
    ProjectsListForUserParameter1? state,
    int? perPage = 30,
    int? page = 1,
  }) async {
    final response = await client.invokeApi(
      method: Method.get,
      path: '/users/{username}/projects'.replaceAll(
        '{username}',
        '${username}',
      ),
      queryParameters: {
        if (state != null) 'state': [state.toJson().toString()],
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
          .map<Project>((e) => Project.fromJson(e as Map<String, dynamic>))
          .toList();
    }

    throw ApiException<Object?>.unhandled(response.statusCode);
  }
}
