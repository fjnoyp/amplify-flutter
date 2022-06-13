import 'package:amplify_secure_storage_dart/src/worker/secure_storage_worker.dart';

/// The JS implementation of [SecureStorageWorker].
class SecureStorageWorkerImpl extends SecureStorageWorker {
  @override
  String get name => 'SecureStorageWorker';
  @override
  String get jsEntrypoint =>
      'packages/amplify_secure_storage_dart/src/workers.dart.js';
  @override
  List<String> get fallbackUrls =>
      const ['packages/amplify_secure_storage_dart/src/workers.js'];
}
