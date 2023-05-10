import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'dependency_injection.config.dart';

final getIt = GetIt.instance;
// final sl = GetIt.instance;

@InjectableInit(
  initializerName: 'initDependencies', //'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
void configureDependencies() => getIt.initDependencies();
