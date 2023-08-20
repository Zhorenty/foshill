import '/runner_unsupported.dart'
    if (dart.library.html) 'runner_web.dart'
    if (dart.library.io) 'runner_io.dart' as runner;

import 'package:flutter/material.dart';

import '/src/core/theme/theme.dart';
import '/src/core/utils/extensions/context_extension.dart';

/// Entry point of application.
Future<void> main() async => runner.run();

/// {@template sample_page}
/// SamplePage widget
/// {@endtemplate}
// TODO: Temporary placeholder, should be remove at some point
class SampleScreen extends StatelessWidget {
  /// {@macro sample_page}
  const SampleScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: const Color(0xFFD9D9D9),
        appBar: AppBar(
          title: Text(
            context.stringOf().appTitle,
            style: context.fonts.displayMedium?.copyWith(),
          ),
        ),
        body: Column(
          children: [
            Text(context.stringOf().unknownError('-Пример-')),
          ],
        ),
      );
}
