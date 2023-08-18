import 'dart:async';

import 'package:database/database.dart';

import '../model/initialization_progress.dart';

typedef StepAction = FutureOr<void>? Function(InitializationProgress progress);

/// Handles initialization steps.
mixin InitializationSteps {
  final initializationSteps = <String, StepAction>{
    'Drift Database': (progress) {
      final database = FoshillDatabase(name: 'foshill');
      return progress.dependencies.database = database;
    }
  };
}
