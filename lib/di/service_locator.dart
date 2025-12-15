import 'package:get_it/get_it.dart';
import 'package:outlier_app/domain/input_parser.dart';
import '../domain/outlier_finder.dart';

final GetIt getIt = GetIt.instance;

void setupDependencies() {
  getIt.registerLazySingleton<OutlierFinder>(
    () => OutlierFinder(),
  );
  getIt.registerLazySingleton<InputParser>(
  () => InputParser(),
);
}
