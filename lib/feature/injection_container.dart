import 'package:get_it/get_it.dart';
import 'package:sample_app/feature/permission/data/repository/permission_repository_impl.dart';
import 'package:sample_app/feature/permission/domain/permission_repository.dart';
import 'package:sample_app/feature/permission/presentation/bloc/permission_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl
    ..registerFactory(() => PermissionBloc(permissionRepository: sl()))

    /// repository
    ..registerLazySingleton<IPermissionRepository>(
        () => PermissionRepository());
}
