import 'package:components_flutter/src/routes/routes.dart';
import 'package:components_flutter/src/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'), // English, no country code
        const Locale('es', 'ES'), // Español, no country code
        const Locale.fromSubtags(
            languageCode: 'zh'), // Chinese *See Advanced Locales below*
        // ... other locales the app supports
      ],
      title: 'Titulo de la App',
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.initialRoute,
      routes: Routes.getAppRoutes(),
      onGenerateRoute: Routes.onGenerateRoute,
      theme: AppTheme.lightTheme,
    );
  }
}
