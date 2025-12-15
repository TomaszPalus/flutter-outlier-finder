// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get title => 'Outlier Finder';

  @override
  String get search => 'Search';

  @override
  String get inputLabel => 'Numbers';

  @override
  String get inputHint => 'e.g. 2,4,0,100,4,11,2602,36';

  @override
  String get invalidFormat => 'Invalid input format';

  @override
  String get tooFewNumbers => 'Please enter at least 3 numbers';

  @override
  String get outlierNotFound => 'Outlier value not found';

  @override
  String get unknownError => 'Something went wrong';
}
