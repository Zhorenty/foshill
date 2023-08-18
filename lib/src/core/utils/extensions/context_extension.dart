import 'package:flutter/material.dart';

import '/src/core/localization/app_localization.dart';

extension LocalizationX on BuildContext {
  GeneratedLocalization stringOf() =>
      AppLocalization.stringOf<GeneratedLocalization>(this);
}
