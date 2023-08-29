// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:io';

import 'package:args/args.dart';

void main(List<String> args) {
  final parser = ArgParser()
    ..addOption('substring')
    ..addOption('jobs-json-file');

  final results = parser.parse(args);

  final substring = results['substring']?.trim();
  final jobsJsonFile = results['jobs-json-file'];

  if (substring == null || substring.isEmpty) {
    throw Exception('arguement: substring is required');
  }

  if (jobsJsonFile == null || jobsJsonFile.isEmpty) {
    throw Exception('arguement: jobs-json-file is required');
  }

  final jobsJson = json.decode(File(jobsJsonFile).readAsStringSync())
      as Map<String, dynamic>;

  final jobList = jobsJson['jobs'] as List<dynamic>;

  try {
    final jobJson =
        jobList.firstWhere((element) => element['name'].contains(substring));
    final jobId = jobJson['databaseId'] as int;
    print(jobId);
  } on Exception catch (_) {
    // Return empty string if no job found
    print("");
  }
}
