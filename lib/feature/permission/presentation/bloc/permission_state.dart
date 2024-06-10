import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_app/feature/permission/models/permission_model.dart';

part 'permission_state.freezed.dart';

@freezed
class PermissionState with _$PermissionState {
  const factory PermissionState.initial() = _PermissionInitial;
  const factory PermissionState.error({required String message}) =
      _PermissionError;
  const factory PermissionState.loaded(
      {required List<PermissionModel> permissionModel}) = _PermissionLoaded;
}
