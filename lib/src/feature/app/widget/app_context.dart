import 'package:flutter/material.dart';

import '/src/core/localization/app_localization.dart';
import '/src/core/router/router.dart';

/// Widget which is responsible for providing the app context.
class AppContext extends StatefulWidget {
  const AppContext({super.key});

  @override
  State<AppContext> createState() => _AppContextState();
}

class _AppContextState extends State<AppContext> {
  @override
  Widget build(BuildContext context) {
    final router = AppRouter();
    return MaterialApp.router(
      routerConfig: router.router,
      supportedLocales: AppLocalization.supportedLocales,
      localizationsDelegates: AppLocalization.localizationsDelegates,
      // theme: $lightThemeData,
      // darkTheme: $darkThemeData,
      locale: const Locale('ru', 'RU'),
    );
  }
}
