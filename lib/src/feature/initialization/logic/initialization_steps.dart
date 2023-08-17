import 'dart:async';

import 'package:foshill/src/core/database/open_connection.dart';

import '../model/initialization_progress.dart';

typedef StepAction = FutureOr<void>? Function(InitializationProgress progress);

/// Handles initialization steps.
mixin InitializationSteps {
  final initializationSteps = <String, StepAction>{
    'Database': (progress) async {
      final database = await openConnection('foshill');
      progress.dependencies.database = database;
    },
  };
}
