import 'dart:async';

import 'package:flutter/material.dart';

import 'src/core/utils/extensions/context_extension.dart';
import 'src/core/utils/logger.dart';
import 'src/feature/app/logic/app_runner.dart';
import 'src/feature/initialization/logic/initialization_processor.dart';
import 'src/feature/initialization/model/dependencies.dart';
import 'src/feature/initialization/model/initialization_hook.dart';

void main() {
  final hook = InitializationHook.setup(
    onInitializing: _onInitializing,
    onInitialized: _onInitialized,
    onError: _onError,
    onInit: _onInit,
  );
  logger.runLogging(
    () {
      runZonedGuarded(
        () => AppRunner().initializeAndRun(hook),
        logger.logZoneError,
      );
    },
    const LogOptions(),
  );
}

void _onInitializing(InitializationStepInfo info) {
  final percentage = ((info.step / info.stepsCount) * 100).toInt();
  logger.info(
    'Inited ${info.stepName} in ${info.msSpent} ms | '
    'Progress: $percentage%',
  );
}

void _onInitialized(InitializationResult result) {
  logger.info('Initialization completed successfully in ${result.msSpent} ms');
}

void _onError(int step, Object error) {
  logger.error('Initialization failed on step $step', error: error);
}

void _onInit() {
  logger.info('Initialization started');
}

/// TODO: Temporary placeholder, should be remove at some point
class SampleScreen extends StatelessWidget {
  /// {@macro sample_page}
  const SampleScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(context.stringOf().appTitle),
        ),
        body: Column(
          children: [
            Text(context.stringOf().samplePlaceholder('Sample')),
          ],
        ),
      );
}
