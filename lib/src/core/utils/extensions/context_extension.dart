import 'package:flutter/material.dart';

import '/src/core/localization/app_localization.dart';

extension LocalizationX on BuildContext {
  /// Returns localized string
  GeneratedLocalization stringOf() =>
      AppLocalization.stringOf<GeneratedLocalization>(this);
}
