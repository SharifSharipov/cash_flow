import 'package:cash_flow/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:cash_flow/core/themes/themes.dart';
import 'package:cash_flow/core/utils/utils.dart';
import 'package:cash_flow/router/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    GlobalKey<ScaffoldMessengerState>? scaffoldMessengerKey;
    return MaterialApp.router(
      /// title
      debugShowCheckedModeBanner: false,
      scaffoldMessengerKey: scaffoldMessengerKey,
      showPerformanceOverlay: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,

      /// lang
      locale: Locale('en'),
      supportedLocales: const [Locale('en')],
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      /// pages
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
    );
  }
}
