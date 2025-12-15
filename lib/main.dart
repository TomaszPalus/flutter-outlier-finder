import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import '../../gen_l10n/app_localizations.dart';
import 'ui/pages/input_page.dart';
import 'di/service_locator.dart';

void main() {
  setupDependencies();
  runApp(const OutlierApp());
}

class OutlierApp extends StatelessWidget {
  const OutlierApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // I18n
      supportedLocales: const [
        Locale('en'),
        Locale('pl'),
      ],
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      theme: ThemeData(useMaterial3: true),
      home: const InputPage(),
    );
  }
}
