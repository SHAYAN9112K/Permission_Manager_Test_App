import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sample_app/core/enums/permission_type_enum.dart';

part 'permission_model.freezed.dart';

@freezed
class PermissionModel with _$PermissionModel {
  const factory PermissionModel(
      {@Default("Missing") String status,
      @Default(PermissionType.camera) PermissionType type}) = _PermissionModel;
  factory PermissionModel.empty() =>
      const PermissionModel(status: "Missing", type: PermissionType.camera);
}
