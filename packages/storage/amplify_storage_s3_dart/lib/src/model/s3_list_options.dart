// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:amplify_core/amplify_core.dart';

/// {@template storage.amplify_storage_s3.list_options}
/// The configurable parameters for the Storage S3 plugin `list` requests.
/// {@endtemplate}
class S3ListOptions extends StorageListOptions {
  /// {@macro storage.amplify_storage_s3.list_options}
  const S3ListOptions({
    StorageAccessLevel accessLevel = StorageAccessLevel.guest,
    int pageSize = 1000,
    bool excludeSubPaths = false,
    String? nextToken,
  }) : this._(
          accessLevel: accessLevel,
          pageSize: pageSize,
          nextToken: nextToken,
          excludeSubPaths: excludeSubPaths,
        );

  const S3ListOptions._({
    super.accessLevel = StorageAccessLevel.guest,
    super.pageSize = 1000,
    super.nextToken,
    this.targetIdentityId,
    this.excludeSubPaths = false,
    this.listAll = false,
  });

  /// {@macro storage.amplify_storage_s3.list_options}
  ///
  /// Use this to list objects that belongs to other user (identified by
  /// [targetIdentityId]) rather than the currently signed in user.
  const S3ListOptions.forIdentity(
    String targetIdentityId, {
    int pageSize = 1000,
    bool excludeSubPaths = false,
    String? nextToken,
  }) : this._(
          accessLevel: StorageAccessLevel.protected,
          pageSize: pageSize,
          targetIdentityId: targetIdentityId,
          nextToken: nextToken,
          excludeSubPaths: excludeSubPaths,
        );

  /// {@macro storage.amplify_storage_s3.list_options}
  ///
  /// Use this to list all objects without pagination.
  const S3ListOptions.listAll({
    StorageAccessLevel accessLevel = StorageAccessLevel.guest,
    bool excludeSubPaths = false,
  }) : this._(
          accessLevel: accessLevel,
          excludeSubPaths: excludeSubPaths,
          listAll: true,
        );

  /// {@macro storage.amplify_storage_s3.list_options}
  ///
  /// Use this to list all objects without pagination when the objects belong
  /// to other user (identified by [targetIdentityId]) rather than the currently
  /// signed in user.
  const S3ListOptions.listAllForIdentity(
    String targetIdentityId, {
    bool excludeSubPaths = false,
  }) : this._(
          accessLevel: StorageAccessLevel.protected,
          targetIdentityId: targetIdentityId,
          excludeSubPaths: excludeSubPaths,
        );

  /// The identity id of another user who uploaded the objects that to be
  /// listed.
  ///
  /// This can be set by calling the [S3ListOptions.forIdentity].
  final String? targetIdentityId;

  /// Whether to exclude objects under the sub paths of the path to list. The
  /// default value is `false`.
  final bool excludeSubPaths;

  /// Whether to list all objects under a given path without pagination. The
  /// default value is `false`.
  ///
  /// This can be set by calling the [S3ListOptions.listAll] or
  /// [S3ListOptions.listAllForIdentity].
  ///
  /// Use with caution if numerous objects are under the given path.
  final bool listAll;
}
