import 'package:flutter/material.dart';

import '/src/core/widget/scope_widgets.dart';
import '/src/feature/initialization/widget/dependencies_scope.dart';
import '/src/feature/initialization/model/dependencies.dart';
import 'app_context.dart';

/// Widget which is responsible for running the app.
class App extends StatelessWidget {
  const App({required this.result, super.key});

  void run() => runApp(this);

  /// Handles initialization result.
  final InitializationResult result;

  @override
  Widget build(BuildContext context) => ScopesProvider(
        providers: [
          ScopeProvider(
            buildScope: (child) => DependenciesScope(
              dependencies: result.dependencies,
              child: child,
            ),
          ),
        ],
        child: const AppContext(),
      );
}
