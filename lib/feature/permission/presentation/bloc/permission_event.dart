import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_app/feature/permission/models/permission_model.dart';
import '../../../../core/enums/permission_type_enum.dart';

part 'permission_event.freezed.dart';

@freezed
class PermissionEvent with _$PermissionEvent {
  const factory PermissionEvent.checkPermission() = CheckPermission;
  const factory PermissionEvent.requestPermission(
      List<PermissionModel> listOfPermissions,
      PermissionType permissionType) = RequestPermission;
}
