import 'dart:async';

import 'package:database/database.dart';

import '../model/initialization_progress.dart';
import '/src/core/router/router.dart';

typedef StepAction = FutureOr<void>? Function(InitializationProgress progress);

/// Handles initialization steps.
mixin InitializationSteps {
  final initializationSteps = <String, StepAction>{
    'Router': (progress) {
      final router = AppRouter();
      return progress.dependencies.router = router;
    },
    'Database': (progress) {
      final database = AppDatabase(name: 'foshill');
      return progress.dependencies.database = database;
    }
  };
}
