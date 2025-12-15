// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get title => 'Wyszukiwanie wartości odstającej';

  @override
  String get search => 'Wyszukaj';

  @override
  String get inputLabel => 'Liczby';

  @override
  String get inputHint => 'np. 2,4,0,100,4,11,2602,36';

  @override
  String get invalidFormat => 'Nieprawidłowy format danych';

  @override
  String get tooFewNumbers => 'Podaj co najmniej 3 liczby';

  @override
  String get outlierNotFound => 'Nie znaleziono wartości odstającej';

  @override
  String get unknownError => 'Coś poszło nie tak';
}
