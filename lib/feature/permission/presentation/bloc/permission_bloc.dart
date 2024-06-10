import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_app/feature/permission/domain/permission_repository.dart';
import 'package:sample_app/feature/permission/presentation/utils/map_permission_status.dart';
import '../../models/permission_model.dart';
import 'permission_event.dart';
import 'permission_state.dart';

class PermissionBloc extends Bloc<PermissionEvent, PermissionState> {
  IPermissionRepository permissionRepository;

  PermissionBloc({required this.permissionRepository})
      : super(const PermissionState.initial()) {
    on<PermissionEvent>((events, emit) async {
      ///mapping the events to related functions
      await events.map(
          checkPermission: (_) async => await _onCheckPermissions(emit),
          requestPermission: (event) async =>
              await _onRequestPermission(event, emit));
    });
    // Check permissions initially
    add(const PermissionEvent.checkPermission());
  }

  Future<void> _onRequestPermission(
    RequestPermission event,
    Emitter<PermissionState> emit,
  ) async {
    final result =
        await permissionRepository.requestPermission(event.permissionType);
    result.fold(

        /// on failure
        (l) => emit(PermissionState.error(message: l.message)),

        /// on success

        (r) {
      /// update list of permissions when requested
      final List<PermissionModel> updatePermissions =
          event.listOfPermissions.map((permission) {
        if (permission.type == event.permissionType) {
          final updatedPermission =
              permission.copyWith(status: mapPermissionStatus(r));
          return updatedPermission;
        } else {
          return permission;
        }
      }).toList();
      emit(PermissionState.loaded(permissionModel: updatePermissions));
    });
  }

  Future<void> _onCheckPermissions(Emitter<PermissionState> emit) async {
    final result = await permissionRepository.checkPermission();
    result.fold(

        /// on failure
        (l) => emit(PermissionState.error(message: l.message)),

        /// on success

        (r) => emit(PermissionState.loaded(permissionModel: r)));
  }
}
