import 'package:get_it/get_it.dart';

import 'feature/auth/presentation/cubit/login_cubit.dart';

final locator = GetIt.instance;

Future<void> init() async {
  locator.registerFactory(() => LoginCubit());

}