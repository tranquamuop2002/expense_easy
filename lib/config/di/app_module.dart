import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'app_module.config.dart';

final serviceLocator = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
Future<void> configureDependencies() async => $initGetIt(serviceLocator);

@module
@Singleton()
abstract class AppModule {

}
