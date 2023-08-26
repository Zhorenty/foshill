import 'package:flutter/foundation.dart';

import '/src/common/utils/pattern_match.dart';

/// Wardrobe event.
@immutable
sealed class WardrobeEvent extends _$WardrobeEventBase {
  const WardrobeEvent();

  /// Load wardrobe event.
  const factory WardrobeEvent.load() = WardrobeEvent$Load;
}

/// [WardrobeEvent.load] state matcher.
final class WardrobeEvent$Load extends WardrobeEvent {
  const WardrobeEvent$Load() : super();
}

/// Wardrobe event base class.
@immutable
abstract base class _$WardrobeEventBase {
  const _$WardrobeEventBase();

  /// Map over event union.
  R map<R>({required PatternMatch<R, WardrobeEvent$Load> load}) =>
      switch (this) {
        final WardrobeEvent$Load s => load(s),
        _ => throw AssertionError(),
      };

  /// Map over event union or return default if no match.
  R maybeMap<R>({
    required R Function() orElse,
    PatternMatch<R, WardrobeEvent$Load>? load,
  }) =>
      map<R>(load: load ?? (_) => orElse());

  /// Map over event union or null if no match.
  R? mapOrNull<R>({PatternMatch<R, WardrobeEvent$Load>? load}) => map<R?>(
        load: load ?? (_) => null,
      );
}
