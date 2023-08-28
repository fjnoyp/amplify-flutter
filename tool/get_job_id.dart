// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:args/args.dart';

void main(List<String> args) {
  final parser = ArgParser()
    ..addOption('substring')
    ..addOption('job-json');

  final results = parser.parse(args);

  final substring = results['substring']?.trim();
  final jobJson = results['job-json']?.trim();

  // Find the job whose name contains the substring
  // Then return that job's id as a string

  final job =
      jobJson.split('\n').firstWhere((element) => element.contains(substring));
  final jobId = job.split('"id": "')[1].split('"')[0];

  print(jobId);
}
