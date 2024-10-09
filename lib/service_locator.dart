import 'package:get_it/get_it.dart';
import 'package:spotify/core/usecase/auth/signup.dart';
import 'package:spotify/data/repository/auth/auth_repository_impl.dart';
import 'package:spotify/domain/repository/auth/auth.dart';

import 'data/sources/auth/auth_firebase_service.dart';

final sl = GetIt.instance;

Future<void> initializeDependecies() async {
  sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImpl());

  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());

  sl.registerSingleton<SignupUseCase>(SignupUseCase());
}
