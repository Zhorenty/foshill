import 'package:database/database.dart';

import '../../../core/router/router.dart';

/// Dependencies container.
abstract interface class Dependencies {
  /// App router
  abstract final AppRouter router;

  /// Database
  abstract final AppDatabase database;

  /// Freeze dependencies, so they cannot be modified.
  Dependencies freeze();
}

/// Mutable version of dependencies.
///
/// Used to build dependencies.
final class Dependencies$Mutable implements Dependencies {
  Dependencies$Mutable();

  @override
  late AppRouter router;

  @override
  late AppDatabase database;

  @override
  Dependencies freeze() => _Dependencies$Immutable(
        database: database,
        router: router,
      );
}

/// Immutable version of dependencies.
///
/// Used to store dependencies.
final class _Dependencies$Immutable implements Dependencies {
  const _Dependencies$Immutable({required this.database, required this.router});

  @override
  final AppRouter router;

  @override
  final AppDatabase database;

  @override
  Dependencies freeze() => this;
}

/// Handles initialization result.
final class InitializationResult {
  const InitializationResult({
    required this.dependencies,
    required this.stepCount,
    required this.msSpent,
  });

  /// Dependencies container.
  final Dependencies dependencies;

  /// Total number of steps.
  final int stepCount;

  /// Time spent on current step in milliseconds.
  final int msSpent;
}
