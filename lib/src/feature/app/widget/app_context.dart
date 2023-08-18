import 'package:flutter/material.dart';

import '../../../../main.dart';

/// Widget which is responsible for providing the app context.
class AppContext extends StatefulWidget {
  const AppContext({super.key});

  @override
  State<AppContext> createState() => _AppContextState();
}

class _AppContextState extends State<AppContext> {
  @override
  Widget build(BuildContext context) => const MaterialApp(
        // supportedLocales: AppLocalization.supportedLocales,
        // localizationsDelegates: AppLocalization.localizationsDelegates,
        // theme: $lightThemeData,
        // darkTheme: $darkThemeData,
        locale: Locale('en'),

        /// TODO: Temporary placeholder, should be remove at some point
        home: SampleScreen(),
      );
}
