import 'package:get_it/get_it.dart';
import 'package:get_it_example/login_service.dart';
import 'package:get_it_example/user_service.dart';

GetIt getIt = GetIt.instance;

void setupLocator() {
  // singleton, usign in conection restApi or data base
  getIt.registerSingleton<UserService>(UserService(), signalsReady: true);
  // factory, using in one View Model for example...
  getIt.registerFactory<LoginService>(() => LoginService());
}
