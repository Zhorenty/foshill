import 'package:flutter/material.dart';

import '../model/dependencies.dart';
import '/src/core/utils/mixin/scope_mixin.dart';

/// Container for all the dependencies
abstract class StoresContainer {
  Dependencies get dependencies;
}

/// Widget which is responsible for providing the dependencies.
class DependenciesScope extends InheritedWidget
    with ScopeMixin
    implements StoresContainer {
  const DependenciesScope({
    required super.child,
    required this.dependencies,
    super.key,
  });

  @override
  final Dependencies dependencies;

  /// Get only dependencies from the widget
  static Dependencies of(BuildContext context) =>
      _maybeOf(context)?.dependencies ??
      ScopeMixin.notFoundInheritedWidgetOfExactType<DependenciesScope>();

  /// Maybe get the dependencies from the widget
  ///
  /// The dependencies may not be present if they are not provided higher up in the tree.
  static StoresContainer? _maybeOf(BuildContext context) =>
      ScopeMixin.scopeMaybeOf<DependenciesScope>(context, listen: false);

  @override
  bool updateShouldNotify(DependenciesScope oldWidget) => false;
}
